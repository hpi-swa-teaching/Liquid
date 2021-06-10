change behavior
createPoll
	| draft q1 |
	draft := LiquidPollDraft new.
	draft title: 'Enter question here'.
	q1 := LiquidSingleChoiceQuestion new.
	q1 title: 'Enter question here'.
	q1 choiceList add: 'Every line in this field is a possible response'.
	q1 choiceList add: 'Participants can choose from them when responding'.
	draft questionList add: q1.
	LiquidPollDraftBuilder openOn: draft