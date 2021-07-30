data
data

	| result sortedData |
	sortedData := self sortData.
	result := SWDataLabeled
		fromXValues: self poll getChoiceIdentifiers
		versusYValues: (sortedData collect: [:element | element first]).
	result setLabels: (sortedData collect: [:element | element second]).
	result setAllDimensionNames: #('Choice' 'Times Voted').
	^ result