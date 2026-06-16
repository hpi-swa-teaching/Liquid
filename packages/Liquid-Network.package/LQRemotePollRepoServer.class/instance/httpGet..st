request handlers
httpGet: req

	(self isPollGetRequest: req) ifTrue: [^ self httpGetPoll: req].
	(self isGroupGetRequest: req) ifTrue: [^ self httpGetGroup: req].
	(self isFullNameGetRequest: req) ifTrue: [^ self httpGetFullName: req]