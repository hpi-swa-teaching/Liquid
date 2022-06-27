testing
testToolbuilderMethodsReturnSpecs

	self assert: ((self pollDraftBuilder buildRunPollButtonWith: self builder) isMemberOf: PluggableButtonSpec).
	self assert: ((self pollDraftBuilder buildQuestionListWith: self builder) isMemberOf: PluggableListSpec).
	self assert: ((self pollDraftBuilder buildAddQuestionButtonWith: self builder) isMemberOf: PluggableButtonSpec)