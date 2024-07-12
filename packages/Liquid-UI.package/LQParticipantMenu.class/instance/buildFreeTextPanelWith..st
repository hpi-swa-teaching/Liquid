toolbuilder
buildFreeTextPanelWith: aBuilder

	| temporaryPanel |
	temporaryPanel := LQFreeTextAnswerPanel newWith: aBuilder.
	temporaryPanel name: #freeText.
	temporaryPanel question: self mockQuestion.
	self freeTextPanel: temporaryPanel.
	^ temporaryPanel