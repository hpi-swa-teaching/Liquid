as yet unclassified
addQuestionWith: aBuilder
	| question pane |
	question := LiquidSingleChoiceQuestion new title: 'Type in your question here'.
	self pollDraft questionList add: question.
	pane := self dependents at: 3.
	pane addMorphBack: (aBuilder build: (self buildQuestion: question at: (self pollDraft questionList size + 1) with: aBuilder)).