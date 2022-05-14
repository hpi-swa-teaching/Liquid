toolbuilder
buildAnswerPanelWith: aBuilder

	| answerPanel |
	answerPanel := LQAnswerPanel newWith: aBuilder.
	self answerPanel: answerPanel.
	answerPanel question: self poll pollDraft questionList first.
	self answerSet addAnswer: answerPanel answer.
	^ answerPanel