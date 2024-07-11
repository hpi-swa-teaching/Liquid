toolbuilder
newAnswerPanel
	self currentQuestion isFreeTextQuestion
		ifTrue: [self currentAnswerPanel: self freeTextPanel.
			self freeTextPanel show. self selectionPanel hide]
		ifFalse: [self currentAnswerPanel: self selectionPanel. self selectionPanel show. self freeTextPanel hide]