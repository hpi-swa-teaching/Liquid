as yet unclassified
httpPost: req 
	| item message args response |
	item := self objectRepo
				at: (req fields at: 'id')
				ifAbsent: [^ req send404Response].
	message := req fields at: 'message'.
	args := STON
				fromString: (req fields at: 'args').
	response := item perform: message asSymbol withArguments: args.
	^ req
		send200Response: (STON toString: response)