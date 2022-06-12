toolbuilder
buildAnswerPanelWith: aBuilder

	| answerPanel |
	answerPanel := LQAnswerPanel newWith: aBuilder.
	self answerPanel: answerPanel.
	self currentQuestionIndex: 1.
	answerPanel question: self currentQuestion.
	self answerSet addAnswer: answerPanel answer.
	^ answerPanel