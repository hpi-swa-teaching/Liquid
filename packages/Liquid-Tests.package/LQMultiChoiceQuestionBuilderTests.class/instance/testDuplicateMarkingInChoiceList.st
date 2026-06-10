testing
testDuplicateMarkingInChoiceList
	| temporaryQuestionBuilder text duplicateFieldText uniqueFieldText |
	text := self createText.
	temporaryQuestionBuilder := LQMultiChoiceQuestionBuilder new.
	temporaryQuestionBuilder
		question: LQMultiChoiceQuestion new;
		choiceList: text.
	duplicateFieldText := temporaryQuestionBuilder choiceTextAt: 5.
	uniqueFieldText := temporaryQuestionBuilder choiceTextAt: 1.
	self assert: (duplicateFieldText includes: (TextColor color: Color red)).
	self deny: (uniqueFieldText includes: (TextColor color: Color red))