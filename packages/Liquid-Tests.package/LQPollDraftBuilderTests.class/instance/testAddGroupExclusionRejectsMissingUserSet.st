testing
testAddGroupExclusionRejectsMissingUserSet

	| builder |
	builder := self builderWithMultiChoiceQuestion.
	self run: [builder addGroupExclusion] answering: {}.
	self assert: builder pollDraft questionList first choiceList first excludedGroups isEmpty