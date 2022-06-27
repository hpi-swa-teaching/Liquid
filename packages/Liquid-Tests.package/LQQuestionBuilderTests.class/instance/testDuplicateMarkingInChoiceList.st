testing
testDuplicateMarkingInChoiceList

	| questionBuilder text |
	
	text := self createText.
	
	questionBuilder := LQQuestionBuilder new.
	questionBuilder question: LQChoicesQuestion new;
		choiceList: text.

	self assert: questionBuilder choiceDescriptions equals: text.
	self assert: ((questionBuilder choiceDescriptions attributesAt: 20)  includes: (TextColor color: Color red)) equals: true.
	self assert: ((questionBuilder choiceDescriptions attributesAt: 7)  includes: (TextColor color: Color red)) equals: false