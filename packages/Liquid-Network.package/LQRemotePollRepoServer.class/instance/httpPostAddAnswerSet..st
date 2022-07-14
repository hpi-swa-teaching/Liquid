request handlers
httpPostAddAnswerSet: req

	| poll answerSet |
	
	poll := self class pollRepo at: (req fields at: 'id') ifAbsent: [^ req send404Response].
	(self request: req isAuthenticatedFor: poll)
		ifFalse: [^self send401Response: req].
		answerSet := STON fromString: req content.
		poll addAnswerSet: answerSet.

	^ req send200Response: (STON toString: True)