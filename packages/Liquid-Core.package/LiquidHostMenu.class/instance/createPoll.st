change behavior
createPoll
	| draft q1 |
	draft := LiquidPollDraft new.
	q1 := LiquidChoicesQuestion new.
	draft addQuestion: q1.
	LiquidPollDraftBuilder openOn: draft