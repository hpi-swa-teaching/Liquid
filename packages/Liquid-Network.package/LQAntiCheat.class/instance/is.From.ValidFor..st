anti-cheat
is: anAnswerSet From: aUser ValidFor: aPoll

	anAnswerSet answers keysAndValuesDo: [:questionID :answer | (self isAnswer: answer From: aUser ValidFor: questionID In: aPoll) ifFalse: [^ false]].
	^ (aPoll answeredByUser: aUser) not