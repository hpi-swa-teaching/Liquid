testing
createPollDraft

	| question questionPrio questionFreeText choices |
	self pollDraft: LQPollDraft new.
	self pollDraft title: 'TestDraft'.
	choices := {
		(LQChoice newFrom: 'Option A').
		(LQChoice newFrom: 'Option B')
	} asOrderedCollection.
	question := LQMultiChoiceQuestion new.
	question title: 'Question'; choiceList: choices.
	questionPrio := LQPriorityQuestion new.
	questionPrio title: 'Prio'; choiceList: choices copy.
	questionFreeText := LQFreeTextQuestion new.
	questionFreeText title: 'Freetext'.
	self pollDraft questionList add: question.
	self pollDraft questionList add: questionPrio.
	self pollDraft questionList add: questionFreeText