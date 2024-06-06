accessing
fillSideboard
	(self question type = 'priority')
		ifTrue:  [^self getRankingIndices].
	(self question type = 'multiChoice')
		ifTrue: [^self getMarkers].
	