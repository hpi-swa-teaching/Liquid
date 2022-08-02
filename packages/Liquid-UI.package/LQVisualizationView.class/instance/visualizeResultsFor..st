data
visualizeResultsFor: aQuestion

	| data diagram |
	
	data := (self dataFor: aQuestion).
	self poll answerSets ifEmpty: [^ UIManager default inform: 'No answers have been submitted yet.'].
	diagram := SWDiagram new .
	diagram visualize: data with: SWBarChart create.
	
	^ diagram
