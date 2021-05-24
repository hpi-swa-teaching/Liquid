as yet unclassified
websocket: sws withRequest: req
	| item message args response isDead |
	item := self objectRepo
				at: (req fields at: 'id')
				ifAbsent: [^ req send404Response].
	message := req fields at: 'message'.
	args := STON
				fromString: (req fields at: 'args').
	isDead := false.
	sws onClose: [ :reason | isDead := true ].
	args
		replaceAll: #sse
		with: [:value | isDead ifFalse: [ sws send: (STON toString: value)] ].
	response := item perform: message asSymbol withArguments: args.
	sws run.