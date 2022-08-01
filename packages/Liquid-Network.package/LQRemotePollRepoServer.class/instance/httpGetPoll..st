request handlers
httpGetPoll: req

	| poll id pollToSend |
	id := (req fields at: 'id').
	(self class pollRepo includesKey: id) 
		ifFalse: [^ req send404Response].
	poll := (self class pollRepo at: id).
	(self request: req isAuthenticatedFor: poll)
		ifFalse: [^self send401Response: req].

	pollToSend := self sanitizePoll: poll.

	req send200Response: (STON toString: pollToSend)