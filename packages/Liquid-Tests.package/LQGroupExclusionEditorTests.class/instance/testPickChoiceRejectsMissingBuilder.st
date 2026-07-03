testing
testPickChoiceRejectsMissingBuilder

	self assert: (self run: [self editor pickChoiceFrom: nil] answering: {}) isNil