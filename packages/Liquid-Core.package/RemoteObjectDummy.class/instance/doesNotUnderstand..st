communication
doesNotUnderstand: aMessage
	| resp |
	resp := WebClient httpPost: url,'/?id=',id content: (STON toString: aMessage) type: 'text/plain'.
	resp isSuccess ifTrue: [^ (STON fromString: resp content)].
	resp code = 400 ifTrue: [ RemoteError new signal: resp content ].
	self error: resp content.
	
	