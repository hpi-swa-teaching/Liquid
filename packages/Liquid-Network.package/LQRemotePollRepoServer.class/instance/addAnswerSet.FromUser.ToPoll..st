request handlers
addAnswerSet: anAnswerSet FromUser: aUser ToPoll: aPoll
	anAnswerSet userpwd: aUser pwd.
	(LQAntiCheat new is: anAnswerSet FromUser: aUser ValidFor: aPoll) ifTrue: [aPoll addAnswerSet: anAnswerSet]