helper methods
createQuestionTitled: aString withChoices: anOrderedCollection

	^ LQMultChoiceQuestion new
			title: aString;
			choiceList: anOrderedCollection;
			yourself