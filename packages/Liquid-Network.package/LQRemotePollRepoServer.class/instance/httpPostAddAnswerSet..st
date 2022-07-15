request handlers
httpPostAddAnswerSet: req

	| poll answerSet user |
	
	poll := self class pollRepo at: (req fields at: 'id') ifAbsent: [^ req send404Response].
	(self request: req isAuthenticatedFor: poll)
		ifFalse: [^self send401Response: req].
		answerSet := STON fromString: req content.
		(poll requiresAuthentication) ifTrue: [
			user := (poll myUserSet getUserWithPassword: (req fields at: 'pwd')).
			self addAnswerSet: answerSet FromUser: user ToPoll: poll.	]
			ifFalse: [poll addAnswerSet: answerSet].

	^ req send200Response: (STON toString: True)