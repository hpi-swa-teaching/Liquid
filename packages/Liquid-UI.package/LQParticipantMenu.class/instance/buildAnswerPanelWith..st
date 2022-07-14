toolbuilder
buildAnswerPanelWith: aBuilder

	| answerPanel |
	answerPanel := LQAnswerPanel newWith: aBuilder.
	self answerPanel: answerPanel.
	self currentQuestionIndex: 1.
	answerPanel question: self currentQuestion.
	answerPanel exclusionMarker: (LQGroupExclusionMarker newFrom: self currentQuestion choiceList and: 'group1').
	self answerSet addAnswer: answerPanel answer.
	^ answerPanel