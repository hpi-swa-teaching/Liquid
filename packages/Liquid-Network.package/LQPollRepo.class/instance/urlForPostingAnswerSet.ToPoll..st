communication
urlForPostingAnswerSet: anAnswerSet ToPoll: aPollId

	^ self url, '/?message=addAnswerSet&token=', self token, '&id=', aPollId