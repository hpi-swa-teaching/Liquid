accessing
wordCloudToggleEnabled

	self currentVisualizationControls ifNil: [^ false].
	^ (self currentVisualizationControls questionList
		at: self currentVisualizationControls index
		ifAbsent: [nil])
		ifNil: [false]
		ifNotNil: [:q | q isFreeTextQuestion]