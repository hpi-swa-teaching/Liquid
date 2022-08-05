accessing
myUserGroupWithToken: aString

	^ self requiresAuthentication
			ifTrue: [^ (self myUserWithToken: aString) group]
			ifFalse: [^ 'nil']