request handlers
httpGet: req

	(self isPollGetRequest: req) ifTrue: [^self httpGetPoll: req].
	(self isGroupGetRequest: req) ifTrue: [^self httpGetGroup: req]
	