result data
data
	| result |
	result := SWDataLabeled fromXValues: self pollChoiceCount versusYValues: self pollCount.
	result setLabels: self choiceNames.
	result setAllDimensionNames: #('Antwort' 'Stimmen').
	^ result