toolbuilder
buildAnswerPanelWith: aBuilder 
	| temporaryAnswerPanel |
	
	temporaryAnswerPanel := LQAnswerPanel newWith: aBuilder.
	self answerPanel: temporaryAnswerPanel.
	self currentQuestionIndex: 1.
	temporaryAnswerPanel question: self currentQuestion.
	temporaryAnswerPanel exclusionMarker:
		(LQGroupExclusionMarker newFrom: self currentQuestion choiceList
		and: (LQPollRepo default groupAt: self poll id)).
	self answerSet addAnswer: temporaryAnswerPanel answer.
	^ temporaryAnswerPanel