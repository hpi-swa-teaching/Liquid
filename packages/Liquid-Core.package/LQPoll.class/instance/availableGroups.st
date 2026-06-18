accessing - visualization
availableGroups

	self requiresAuthentication ifFalse: [^ OrderedCollection new].
	^ self myUserSet availableGroups