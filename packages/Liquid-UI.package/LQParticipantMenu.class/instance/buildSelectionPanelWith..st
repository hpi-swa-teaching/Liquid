toolbuilder
buildSelectionPanelWith: aBuilder 
	| temporaryPanel |
	temporaryPanel := LQSelectionPanel newWith: aBuilder.
	temporaryPanel name: #selection.
	temporaryPanel exclusionMarker: LQGroupExclusionMarker new.
	temporaryPanel question: self mockQuestion.
	self selectionPanel: temporaryPanel.
	"self answerSet addAnswer: temporaryPanel answer."
	^ temporaryPanel