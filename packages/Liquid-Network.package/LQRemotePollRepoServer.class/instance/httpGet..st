request handlers
httpGet: req

	| poll id |
	id := (req fields at: 'id').
	Transcript show: ('ID: ', id);cr.
	(self class pollRepo includesKey: id) 
		ifFalse: [^ req send404Response];
		ifTrue: [poll := (self class pollRepo at: id)].
	(self request: req isAuthenticatedFor: poll)
		ifFalse: [^req send400Response].

	req send200Response: (STON toString: poll)