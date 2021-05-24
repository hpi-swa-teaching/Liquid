as yet unclassified
addQuestionWith: aBuilder
	| question |
	question := LiquidSingleChoiceQuestion new title: 'Type in your question here'.
	self pollDraft questionList add: question.
	window addPaneMorph: (aBuilder build: (self buildQuestion: question at: (self pollDraft questionList size + 1) with: aBuilder)).