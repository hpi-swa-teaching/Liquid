communication
doesNotUnderstand: aMessage

	| resp |
	resp := self postToServer: aMessage.
	resp isSuccess ifTrue: [^ STON fromString: resp content].
	resp code = 401 ifTrue: [LQRemoteError new signal: resp content].
	self error: resp content