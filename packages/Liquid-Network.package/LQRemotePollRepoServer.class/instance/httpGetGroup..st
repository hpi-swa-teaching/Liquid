request handlers
httpGetGroup: req

	| poll id user|

	id := (req fields at: 'id').
	(self class pollRepo includesKey: id) 
		ifFalse: [^ req send404Response];
		ifTrue: [poll := (self class pollRepo at: id)].
	(self request: req isAuthenticatedFor: poll)
		ifFalse: [^self send401Response: req].
	(poll requiresAuthentication)
		ifTrue:[
			user := (poll myUserSet getUserWithPassword: (req fields at: 'pwd')).
			req send200Response: user group]
		ifFalse:[req send200Response: '']