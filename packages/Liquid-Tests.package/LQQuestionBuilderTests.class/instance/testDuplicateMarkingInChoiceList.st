testing
testDuplicateMarkingInChoiceList

	| temporaryQuestionBuilder text |
	
	text := self createText.
	
	temporaryQuestionBuilder := LQQuestionBuilder new.
	temporaryQuestionBuilder question: LQChoicesQuestion new;
		choiceList: text.

	self assert: temporaryQuestionBuilder choiceDescriptions equals: text.
	self assert: ((temporaryQuestionBuilder choiceDescriptions attributesAt: 20)  includes: (TextColor color: Color red)) equals: true.
	self assert: ((temporaryQuestionBuilder choiceDescriptions attributesAt: 7)  includes: (TextColor color: Color red)) equals: false