modifying
applyExcludedGroups: aGroupCollection

	self excludedGroups: aGroupCollection.
	aGroupCollection isEmpty
		ifTrue: [self rawString: self description]
		ifFalse: [self rawString: self description, '[', (String streamContents: [:s |
			aGroupCollection do: [:each | s nextPutAll: each] separatedBy: [s nextPutAll: ',']]), ']']