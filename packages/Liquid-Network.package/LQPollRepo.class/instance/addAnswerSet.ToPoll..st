communication
addAnswerSet: anAnswerSet ToPoll: aPollId

	^ WebClient httpPost: self url, '/?message=addAnswerSet&token=', self token,'&id=', aPollId content: (STON toString: anAnswerSet) type: 'text/plain'