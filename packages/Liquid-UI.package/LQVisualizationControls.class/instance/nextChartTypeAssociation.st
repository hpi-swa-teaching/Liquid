visualization-type
nextChartTypeAssociation

	| types currentIndex |
	types := self class chartTypes.
	currentIndex := types findFirst: [:assoc | assoc value == self chartType].
	currentIndex isZero ifTrue: [currentIndex := 1].
	^ types at: (currentIndex \\ types size) + 1