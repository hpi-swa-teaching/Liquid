change behavior
createPoll

	| draft q1 |
	draft := LQPollDraft new.
	q1 := LQChoicesQuestion new.
	draft addQuestion: q1.
	LQPollDraftBuilder openOn: draft