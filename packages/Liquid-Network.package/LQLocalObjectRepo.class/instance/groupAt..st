accessing
groupAt: aPollId

	(self at: aPollId) requiresAuthentication
		ifTrue: [
			^ ((self at: aPollId) myUserSet getUserWithToken: self token) group]
		ifFalse: [^ 'nil']