toolbuilder
buildFreeTextPanelWith: aBuilder 
	| spec |
	spec := LQFreeTextAnswerPanel newWith: aBuilder.
	spec name: #freeText.
	self freeTextPanel: spec.
	spec question: self currentQuestion.
	self answerSet addAnswer: spec answer.
	self setUpMenu.
	^ spec