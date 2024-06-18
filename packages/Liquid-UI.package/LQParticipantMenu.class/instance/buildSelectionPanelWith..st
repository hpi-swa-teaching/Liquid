toolbuilder
buildSelectionPanelWith: aBuilder 
	| temporaryPanel |
	temporaryPanel := LQSelectionPanel newWith: aBuilder.
	temporaryPanel name: #selection.
	temporaryPanel exclusionMarker: LQGroupExclusionMarker new.
	self selectionPanel: temporaryPanel.
	"self answerSet addAnswer: temporaryPanel answer."
	^ temporaryPanel