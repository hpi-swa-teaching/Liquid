data
visualizeChoicesResultsFor: aQuestion

	| data diagram |
	(self statistics hasVotesForQuestion: aQuestion) ifFalse: [^ Morph new beTransparent].
	data := self dataFor: aQuestion.
	diagram := SWDiagram new.
	diagram visualize: data with: self chartType create.
	^ diagram