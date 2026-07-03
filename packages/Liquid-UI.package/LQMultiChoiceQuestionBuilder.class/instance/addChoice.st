modifying
addChoice
	self choiceTexts size >= self maxChoiceFieldCount ifTrue: [^ self].
	self choiceTexts add: ''.
	self changed: #buildPanelChildren