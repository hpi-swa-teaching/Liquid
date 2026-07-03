testing
testRemoveConditionRejectsQuestionWithoutConditions

	self deny: (self run: [self editor removeConditionFrom: self pollDraft targetIndex: 2] answering: {})