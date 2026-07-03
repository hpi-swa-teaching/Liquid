modifying
removeChoiceAt: anIndex
	self choiceTexts size > 2 ifFalse: [^ self].
	self choiceTexts removeAt: anIndex.
	self syncChoiceListFromChoiceTexts.
	self changed: #buildPanelChildren