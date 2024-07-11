accessing
fillSideboard
	(self question isPriorityQuestion)
		ifTrue:  [^self getRankingIndices].
	(self question isMultiChoiceQuestion)
		ifTrue: [^self getMarkers].
	