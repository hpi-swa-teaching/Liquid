testing
testRemoveConditionRejectsMissingSelection

	self deny: (self run: [self editor removeConditionFrom: self pollDraft targetIndex: 0] answering: {})