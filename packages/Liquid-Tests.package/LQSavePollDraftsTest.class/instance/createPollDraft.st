testing
createPollDraft

	| question questionPrio questionFreeText |
	self pollDraft: LQPollDraft new.
	self pollDraft title: 'TestDraft'.
	question := LQMultiChoiceQuestion new.
	question title: 'Question'.
	questionPrio := LQPriorityQuestion new.
	questionPrio title: 'Prio'.
	questionFreeText := LQFreeTextQuestion new.
	questionFreeText title: 'Freetext'.
	self pollDraft questionList add: question.
	self pollDraft questionList add: questionPrio.
	self pollDraft questionList add: questionFreeText