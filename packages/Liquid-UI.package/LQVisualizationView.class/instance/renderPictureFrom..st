data
renderPictureFrom: aQuestion

	| diagram frame |
	diagram := self visualizeChoicesResultsFor: aQuestion.
	diagram extent: 500 @ 300.
	frame := Morph new.
	frame color: Color white.
	frame extent: diagram fullBounds extent + (20 @ 40).
	diagram position: frame topLeft + (10 @ 10).
	frame addMorph: diagram.
	^ frame imageForm