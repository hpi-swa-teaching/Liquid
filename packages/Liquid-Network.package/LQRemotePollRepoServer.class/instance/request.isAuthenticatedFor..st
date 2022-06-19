request handlers
request: req isAuthenticatedFor: poll
	(poll requiresAuthentication)
	ifTrue: 
			[((poll myUserSet) containsUserWithID: (req fields at: 'userID' ifAbsent: 
							[^ false]))
				ifFalse: [^ false]].
	^ true