group-filter
toggleGroupAt: anIndex

	| aGroup |
	aGroup := self poll availableGroups at: anIndex ifAbsent: [^ self].
	(self poll excludedGroups includes: aGroup)
		ifTrue: [self poll excludedGroups remove: aGroup]
		ifFalse: [self poll excludedGroups add: aGroup].
	self changed: #groupFilterLabels.
	self changed: #groupFilterIndex.
	(self questionList at: self index ifAbsent: [^ self]) isFreeTextQuestion
		ifFalse: [self newChoicesViewFor: self index]