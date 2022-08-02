anti-cheat
is: anAnswerSet From: aUser ValidFor: aPoll

	anAnswerSet answers keysAndValuesDo:  [:questionid :answer |
			(self isAnswer: answer From: aUser ValidForQuestionId: questionid InPoll: aPoll) ifFalse: [^ false]].
	^ (aPoll answeredByUser: aUser) not
	