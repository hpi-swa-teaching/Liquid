visualization
visualizeFreeTextResultsFor: aQuestion

	| cloud |
	cloud := PasteUpMorph new.
	cloud color: (Color r: 0.97 g: 0.97 b: 1.0).
	cloud borderWidth: 0.
	cloud setProperty: #isLiquidWordCloud toValue: true.
	self populateWordCloud: cloud withData: (self answerFrequenciesFor: aQuestion).
	^ cloud
