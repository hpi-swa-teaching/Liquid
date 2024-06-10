toolbuilder
buildFreeTextPanelWith: aBuilder 
	| temporaryFreeTextPanel |
	temporaryFreeTextPanel := LQFreeTextAnswerPanel newWith: aBuilder.
	self freeTextPanel: temporaryFreeTextPanel.
	temporaryFreeTextPanel question: self currentQuestion.
	self answerSet addAnswer: temporaryFreeTextPanel answer.
	self setUpMenu.
	^ temporaryFreeTextPanel