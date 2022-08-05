initialize-release
buildPoll

	self poll: (LQPoll newWithPollDraft: LQPollDraft new).
	self poll pollDraft questionList
		add: self q1;
		add: self q2.