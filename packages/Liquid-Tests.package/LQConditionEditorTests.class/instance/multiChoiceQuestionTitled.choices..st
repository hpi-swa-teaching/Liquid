helper methods
multiChoiceQuestionTitled: aString choices: aCollection

	^ LQMultiChoiceQuestion new
		title: aString;
		choiceList: (aCollection collect: [:each | LQChoice newFrom: each]) asOrderedCollection;
		yourself