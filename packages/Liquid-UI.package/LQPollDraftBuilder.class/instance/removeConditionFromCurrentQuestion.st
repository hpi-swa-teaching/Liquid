modifying
removeConditionFromCurrentQuestion

	(LQConditionEditor new removeConditionFrom: self pollDraft targetIndex: self currentQuestion)
		ifTrue: [self changed: #list]