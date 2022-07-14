request handlers
httpGetPoll: req

	| poll id |
	id := (req fields at: 'id').
	(self class pollRepo includesKey: id) 
		ifFalse: [^ req send404Response];
		ifTrue: [poll := (self class pollRepo at: id)].
	(self request: req isAuthenticatedFor: poll)
		ifFalse: [^self send401Response: req].

	req send200Response: (STON toString: poll)