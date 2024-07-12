request handlers
httpGetPoll: req

	| poll id pollToSend |
	id := req fields at: 'id'.
	(self hasPollWithId: id) ifFalse: [^ req send404Response].
	poll := self pollWithId: id.
	(self request: req isAuthenticatedFor: poll) ifFalse: [^ self send401Response: req].
	
	pollToSend := poll sanitized.
	req send200Response: (STON toString: pollToSend)