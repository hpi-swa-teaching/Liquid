request handlers
httpGet: req

	(req fields includesKey: 'message') ifFalse: [^self httpGetPoll: req].
	((req fields at: 'message') = 'getGroup') ifTrue: [^self httpGetGroup: req]
	