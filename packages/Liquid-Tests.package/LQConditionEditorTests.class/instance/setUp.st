running
setUp

	super setUp.
	self editor: LQConditionEditor new.
	self pollDraft: LQPollDraft new.
	self pollDraft
		addQuestion: (self multiChoiceQuestionTitled: 'Color?' choices: #('Red' 'Blue'));
		addQuestion: (self multiChoiceQuestionTitled: 'Why red?' choices: #('Because'))