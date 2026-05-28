request handlers
addAnswerSet: anAnswerSet FromUser: aUser ToPoll: aPoll

	anAnswerSet token: aUser token.
	(LQAntiCheat new is: anAnswerSet From: aUser ValidFor: aPoll) ifFalse: [^ false].
	^ aPoll addAnswerSet: anAnswerSet