modifying
openAddConditionDialog

	(LQConditionEditor new addConditionTo: self pollDraft targetIndex: self currentQuestion)
		ifTrue: [self changed: #list]