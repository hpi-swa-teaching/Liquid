data
dataFor: aQuestion

	| result sortedData |
	sortedData := self sortDataFor: aQuestion.
	result := SWDataLabeled
		fromXValues: (self poll getChoiceIdentifiersFor: aQuestion)
		versusYValues: (sortedData collect: [:element | element first]).
	result setLabels: (sortedData collect: [:element | element second]).
	result setAllDimensionNames: #('Choice' 'Times Voted').
	^ result