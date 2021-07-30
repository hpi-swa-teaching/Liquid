initialize
visualizeResults

	self poll answerSets ifEmpty: [^ UIManager default inform: 'No answers have been submitted yet.'].
	(SWDiagram new visualize: self data with: SWBarChart create) openInWindowLabeled: self poll pollDraft title