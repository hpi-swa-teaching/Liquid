as yet unclassified
is: anAnswerSet FromUser: aUser ValidFor: aPoll

	anAnswerSet answers keysAndValuesDo:  [:questionid :answer | (self isAnswer: answer FromUser: aUser ValidForQuestionId: questionid InPoll: aPoll) ifFalse: [^ false]].
	(self hasUser: aUser AnsweredPoll: aPoll) ifTrue: [^ false].
	^ true