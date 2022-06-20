testing
testDuplicateMarkingInChoiceList

	| pollDraftBuilder text |
	
	text := self createText.
	
	pollDraftBuilder := LQQuestionBuilder new.
	pollDraftBuilder pollDraft: LQPollDraft new;
		addQuestion;
		choiceList: text.

	self assert: pollDraftBuilder choiceDescriptions equals: text.
	self assert: ((pollDraftBuilder choiceDescriptions attributesAt: 20)  includes: (TextColor color: Color red)) equals: true.
	self assert: ((pollDraftBuilder choiceDescriptions attributesAt: 7)  includes: (TextColor color: Color red)) equals: false