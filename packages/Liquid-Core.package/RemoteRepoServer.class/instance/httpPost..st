as yet unclassified
httpPost: req 
	| item message response |
	item := self objectRepo
				at: (req fields at: 'id')
				ifAbsent: [^ req send404Response].
	message := STON fromString: req content.
	message arguments
		replaceAll: #sse
		with: [:value | req stream
				nextPutAll: (STON toString: value);
				 crlf;
				 flush].
	response := message sendTo: item.
	^ req
		send200Response: (STON toString: response)