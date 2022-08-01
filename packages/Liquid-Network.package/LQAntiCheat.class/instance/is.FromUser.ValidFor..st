anti-cheat
is: anAnswerSet FromUser: aUser ValidFor: aPoll

	anAnswerSet answers keysAndValuesDo:  [:questionid :answer | (self isAnswer: answer FromUser: aUser ValidForQuestionId: questionid InPoll: aPoll) ifFalse: [^ false]].
	(aPoll answeredByUser: aUser) ifTrue: [^ false].
	^ true