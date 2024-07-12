testing
testDuplicateMarkingInChoiceList

	| temporaryQuestionBuilder text color1 color2 |
	text := self createText.
	
	temporaryQuestionBuilder := LQMultiChoiceQuestionBuilder new.
	temporaryQuestionBuilder
		question: LQMultiChoiceQuestion new;
		choiceList: text.
	
	color1 := temporaryQuestionBuilder choiceDescriptions attributesAt: 20.
	color2 := temporaryQuestionBuilder choiceDescriptions attributesAt: 7.
	
	self assert: temporaryQuestionBuilder choiceDescriptions equals: text.
	self assert: (color1 includes: (TextColor color: Color red)).
	self deny: (color2 includes: (TextColor color: Color red))