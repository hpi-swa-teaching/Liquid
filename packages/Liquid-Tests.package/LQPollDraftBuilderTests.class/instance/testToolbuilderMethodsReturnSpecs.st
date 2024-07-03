testing
testToolbuilderMethodsReturnSpecs
	self
		assert: ((self pollDraftBuilder buildRunPollButtonWith: self builder)
				isMemberOf: PluggableButtonSpec).
	self
		assert: ((self pollDraftBuilder buildQuestionListWith: self builder)
				isMemberOf: PluggableListSpec).
	self
		assert: ((self pollDraftBuilder buildAddMultiChoiceQuestionButtonWith: self builder)
				isMemberOf: PluggableButtonSpec).
	self
		assert: ((self pollDraftBuilder buildAddPriorityQuestionButtonWith: self builder)
				isMemberOf: PluggableButtonSpec).
	self
		assert: ((self pollDraftBuilder buildRemoveQuestionButtonWith: self builder)
				isMemberOf: PluggableButtonSpec).
				
		self
		assert: ((self pollDraftBuilder buildSaveDraftButtonWith: self builder)
				isMemberOf: PluggableButtonSpec)