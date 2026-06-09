data
visualizeChoicesResultsFor: aQuestion

	| data diagram |
	data := self dataFor: aQuestion.
	self poll answerSets ifEmpty: [^ Morph new beTransparent].
	diagram := SWDiagram new.
	diagram visualize: data with: self chartType create.
	^ diagram