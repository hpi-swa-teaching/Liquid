request handlers
httpPost: req
	
	((req fields at: 'message') = 'addAnswerSet') ifTrue: [^self httpPostAddAnswerSet: req].