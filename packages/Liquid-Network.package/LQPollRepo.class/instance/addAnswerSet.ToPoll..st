communication
addAnswerSet: anAnswerSet ToPoll: aPollId
	^ WebClient httpPost: url, '/?message=addAnswerSet&token=', self currentToken,'&id=', aPollId content: (STON toString: anAnswerSet) type: 'text/plain'