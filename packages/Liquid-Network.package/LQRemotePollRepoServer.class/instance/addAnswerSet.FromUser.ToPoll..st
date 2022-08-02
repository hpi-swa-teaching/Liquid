request handlers
addAnswerSet: anAnswerSet FromUser: aUser ToPoll: aPoll

	anAnswerSet token: aUser token.
	(LQAntiCheat new is: anAnswerSet FromUser: aUser ValidFor: aPoll) ifTrue: [aPoll addAnswerSet: anAnswerSet]