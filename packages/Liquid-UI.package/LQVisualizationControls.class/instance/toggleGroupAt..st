group-filter
toggleGroupAt: anIndex

	| aGroup |
	aGroup := self poll availableGroups at: anIndex ifAbsent: [^ self].
	self groupFilter toggleGroupExclusion: aGroup.
	self changed: #groupFilterLabels.
	self changed: #groupFilterIndex.
	(self questionList at: self index ifAbsent: [^ self]) isFreeTextQuestion
		ifFalse: [self newChoicesViewFor: self index]