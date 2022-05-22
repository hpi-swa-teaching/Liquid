toolbuilder
buildAnswerPanelWith: aBuilder

	| answerPanel |
	self currentQuestionIndex: 1.
	answerPanel := LQAnswerPanel newWith: aBuilder.
	self answerPanel: answerPanel.
	answerPanel question: self currentQuestion.
	self answerSet addAnswer: answerPanel answer.
	^ answerPanel