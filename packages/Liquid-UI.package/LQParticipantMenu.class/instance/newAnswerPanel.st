toolbuilder
newAnswerPanel
	self currentQuestion type = 'freeText'
		ifTrue: [self currentAnswerPanel: self freeTextPanel]
		ifFalse: [self currentAnswerPanel: self selectionPanel]