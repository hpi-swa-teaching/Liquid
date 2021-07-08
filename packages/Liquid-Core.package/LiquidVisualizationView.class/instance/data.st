result data
data
	| result |
	result := SWDataLabeled fromXValues: self poll getNumberOfChoices versusYValues: self poll getVotedChoicesPerChoice.
	result setLabels: self poll getChoiceNames.
	result setAllDimensionNames: #('Choice' 'Times Voted').
	^ result