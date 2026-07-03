testing
testRunPollRegistersPollUnderChosenId

	| builder |
	builder := self builderWithMultiChoiceQuestion.
	builder pollDraft questionList first title: 'Color?'.
	self
		run: [builder runPoll]
		answering: {'Enter a poll id' -> 'coverage-test-poll'}.
	self assert: (LQRemotePollRepoServer pollRepo includesKey: 'coverage-test-poll')