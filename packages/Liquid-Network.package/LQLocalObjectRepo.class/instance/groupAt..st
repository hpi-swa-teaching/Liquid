accessing
groupAt: aPollId
	(self at: aPollId) requiresAuthentication
		ifTrue: [
			^ ((self at: aPollId) myUserSet getUserWithPassword: self currentPassword) group]
		ifFalse: [^ 'nil']