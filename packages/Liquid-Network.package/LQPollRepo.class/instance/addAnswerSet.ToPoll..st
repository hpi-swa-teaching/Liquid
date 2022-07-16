communication
addAnswerSet: anAnswerSet ToPoll: aPollId
	^ WebClient httpPost: url, '/?message=addAnswerSet&pwd=', self currentPassword,'&id=', aPollId content: (STON toString: anAnswerSet) type: 'text/plain'