accessing
postAnswerSet: anAnswerSet ToRemotePoll: aPollId
	
	^ WebClient httpPost: url, '/?message=addAnswerSet&pwd=', self currentPassword,'&id=', aPollId content: (STON toString: anAnswerSet) type: 'text/plain'