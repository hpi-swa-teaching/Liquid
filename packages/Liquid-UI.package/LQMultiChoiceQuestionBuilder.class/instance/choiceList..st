accessing
choiceList: aText
	
	self isInLiveEditMode ifTrue: [self question wasEdited: true].
	self question choiceList: (((self orderedLinesFor: aText) select: [:value | (value withBlanksTrimmed = '') not]) collect: [:value | LQChoice newFrom: value]).
	self changed: #choiceDescriptions