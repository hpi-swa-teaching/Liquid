toolbuilder
buildAnswerPanelWith: aBuilder 
	| temporaryPanel |
	temporaryPanel := LQAnswerPanel newWith: aBuilder.
	self selectionPanel: temporaryPanel.
	self answerSet addAnswer: temporaryPanel answer.
	^ temporaryPanel