toolbuilder
buildSelectionPanelWith: aBuilder

	| temporaryPanel |
	temporaryPanel := LQSelectionAnswerPanel newWith: aBuilder.
	temporaryPanel name: #selection.
	temporaryPanel exclusionMarker: LQGroupExclusionMarker new.
	temporaryPanel question: self mockQuestion.
	self selectionPanel: temporaryPanel.
	"self answerSet addAnswer: temporaryPanel answer."
	^ temporaryPanel