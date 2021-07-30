toolbuilder
buildAnswerPanelWith: aBuilder

	| answerPanel |
	answerPanel := LQAnswerPanel newWith: aBuilder.
	answerPanel question: self poll pollDraft questionList first.
	self answerSet addAnswer: answerPanel answer.
	^ answerPanel