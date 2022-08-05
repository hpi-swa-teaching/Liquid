security
request: req isAuthenticatedFor: poll

	(poll requiresAuthentication)
	ifTrue: 
			[((poll myUserSet) containsUserWithToken: (req fields at: 'token' ifAbsent: 
							[^ false]))
				ifFalse: [^ false]].
	^ true