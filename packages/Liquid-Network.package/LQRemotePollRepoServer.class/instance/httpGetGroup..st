request handlers
httpGetGroup: req

	| poll id user |
	id := req fields at: 'id'.
	(self hasPollWithId: id) ifFalse: [^ req send404Response].
	poll := self pollWithId: id.
	(self request: req isAuthenticatedFor: poll) ifFalse: [^ self send401Response: req].
	poll requiresAuthentication
		ifTrue: [
			user := poll myUserWithToken: (req fields at: 'token').
			req send200Response: user group]
		ifFalse: [req send200Response: '']