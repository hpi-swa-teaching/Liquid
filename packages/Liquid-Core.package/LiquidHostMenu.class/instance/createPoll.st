change behavior
createPoll
	| draft q1 |
	draft := LiquidPollDraft new.
	draft title: 'Enter question here'.
	q1 := LiquidSingleChoiceQuestion new.
	q1 title: 'Enter question here'.
	q1 addChoice: 'Every line in this field is a possible response'.
	q1 addChoice:  'Participants can choose from them when responding'.
	draft addQuestion: q1.
	LiquidPollDraftBuilder openOn: draft