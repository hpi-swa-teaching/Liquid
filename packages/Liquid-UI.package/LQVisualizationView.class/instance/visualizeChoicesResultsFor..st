data
visualizeChoicesResultsFor: aQuestion

	| data diagram |
	(self poll hasVotesForQuestion: aQuestion) ifFalse: [^ Morph new beTransparent].
	data := self dataFor: aQuestion.
	diagram := SWDiagram new.
	diagram visualize: data with: self chartType create.
	^ diagram