data
renderPictureFrom: aQuestion

	| diagram frame |
	diagram := self visualizeChoicesResultsFor: aQuestion.
	diagram extent: 500 @ 300.
	frame := Morph new.
	frame color: Color white.
	frame extent: diagram extent + (8 @ 8).
	diagram position: frame topLeft + (4 @ 4).
	diagram position: frame topLeft.
	frame addMorph: diagram.
	^ frame imageForm