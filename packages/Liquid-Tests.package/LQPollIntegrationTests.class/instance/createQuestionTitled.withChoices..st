helper methods
createQuestionTitled: aString withChoices: anOrderedCollection

	^ LQMultiChoiceQuestion new
			title: aString;
			choiceList: anOrderedCollection;
			yourself