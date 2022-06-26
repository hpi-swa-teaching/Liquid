request handlers
httpPost: req

	| item message response |
	
	item := self class pollRepo at: (req fields at: 'id') ifAbsent: [^ req send404Response].
	(self request: req isAuthenticatedFor: item)
		ifFalse: [^self send401Response: req].
	message := STON fromString: req content.
	message arguments replaceAll: #sse with: [:value |
		req stream
			nextPutAll: (STON toString: value);
			crlf;
			flush].
	response := [message sendTo: item]
		on: Error
		do: [:error | ^ req sendResponse: (req newResponse protocol: 'HTTP/1.1' code: 400) content: error description].
	^ req send200Response: (STON toString: response)