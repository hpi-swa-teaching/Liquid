modifying
toggleGroupExclusion: aGroup

	(self excludedGroups includes: aGroup)
		ifTrue: [self excludedGroups remove: aGroup]
		ifFalse: [self excludedGroups add: aGroup]