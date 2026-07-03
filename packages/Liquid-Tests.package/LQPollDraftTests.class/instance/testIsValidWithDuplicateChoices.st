testing
testIsValidWithDuplicateChoices
	| question |
	question := LQMultiChoiceQuestion new.
	question
		title: 'Q1';
		choiceList: {
			(LQChoice newFrom: 'Option A').
			(LQChoice newFrom: 'Option A')} asOrderedCollection.
	self pollDraft questionList: {question}.
	self deny: self pollDraft isValid