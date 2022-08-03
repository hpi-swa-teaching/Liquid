accessing
groupAt: aPollId

	(self at: aPollId) requiresAuthentication
		ifTrue: [
			^ ((self at: aPollId) myUserWithToken: self token) group]
		ifFalse: [^ 'nil']