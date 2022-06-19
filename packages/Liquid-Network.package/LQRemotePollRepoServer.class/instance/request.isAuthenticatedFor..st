request handlers
request: req isAuthenticatedFor: poll
	(poll requiresAuthentication)
	ifTrue: 
			[((poll myUserSet) containsUserWithID: (req fields at: 'pwd' ifAbsent: 
							[^ false]))
				ifFalse: [^ false]].
	^ true