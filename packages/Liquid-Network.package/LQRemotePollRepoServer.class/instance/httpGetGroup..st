request handlers
httpGetGroup: req

	| poll id user token|

	id := (req fields at: 'id').
	(self hasPollWithId: id) 
		ifFalse: [^ req send404Response].
	poll := self pollWithId: id.
	(self request: req isAuthenticatedFor: poll)
		ifFalse: [^ self send401Response: req].
	token := (req fields at: 'token').
	(poll requiresAuthentication)
		ifTrue:[
			user := (poll myUserWithToken: token).
			req send200Response: user group]
		ifFalse:[req send200Response: '']