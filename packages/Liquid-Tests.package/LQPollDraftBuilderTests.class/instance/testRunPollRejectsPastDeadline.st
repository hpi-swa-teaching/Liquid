testing
testRunPollRejectsPastDeadline

	| builder |
	builder := self builderWithMultiChoiceQuestion.
	builder pollDraft questionList first title: 'Color?'.
	builder pollDraft deadline: (DateAndTime now - (Duration days: 1)) printString.
	self
		run: [builder runPoll]
		answering: {'Enter a poll id' -> 'past-deadline-poll'}.
	self deny: (LQRemotePollRepoServer pollRepo includesKey: 'past-deadline-poll')