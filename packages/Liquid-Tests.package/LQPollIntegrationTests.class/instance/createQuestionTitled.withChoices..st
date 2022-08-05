helper methods
createQuestionTitled: aString withChoices: anOrderedCollection

	^ LQChoicesQuestion new
			title: aString;
			choiceList: anOrderedCollection;
			yourself