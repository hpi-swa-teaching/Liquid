data
renderPictureFrom: aQuestion

	| diagram frame |
	diagram := self visualizeChoicesResultsFor: aQuestion.
	diagram extent: 500 @ 300.
	frame := Morph new.
	frame color: Color white.
	frame extent: diagram extent + (10 @ 10).
	diagram position: frame topLeft + (5@ 5).
	frame addMorph: diagram.
	^ frame imageForm