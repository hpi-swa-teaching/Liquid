initialize-release
buildPoll

	poll := LQPoll newWithPollDraft: LQPollDraft new.
	poll pollDraft questionList
		add: q1;
		add: q2.