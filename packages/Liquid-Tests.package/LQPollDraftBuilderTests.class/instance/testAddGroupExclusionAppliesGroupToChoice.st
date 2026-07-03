testing
testAddGroupExclusionAppliesGroupToChoice

	| builder |
	builder := self builderWithMultiChoiceQuestion.
	builder pollDraft userSetID: self userSetWithGroups id.
	self
		run: [builder addGroupExclusion]
		answering: {
			'Restrict' -> 'Alice'.
			'Pick group' -> (OrderedCollection with: 'group1' with: '<< done >>')}.
	self assert: (builder pollDraft questionList first choiceList first excludesGroup: 'group1')