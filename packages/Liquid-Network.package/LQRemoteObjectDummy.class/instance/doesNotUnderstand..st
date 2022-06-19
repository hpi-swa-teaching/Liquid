communication
doesNotUnderstand: aMessage

	| resp |
	resp := WebClient httpPost: url, '/?pwd=', self currentPassword,'&id=', id content: (STON toString: aMessage) type: 'text/plain'.
	resp isSuccess ifTrue: [^ STON fromString: resp content].
	resp code = 400 ifTrue: [LQRemoteError new signal: resp content].
	self error: resp content