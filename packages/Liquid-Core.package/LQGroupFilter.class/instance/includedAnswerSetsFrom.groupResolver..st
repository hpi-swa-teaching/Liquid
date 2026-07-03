filtering
includedAnswerSetsFrom: aCollection groupResolver: aBlock

	^ aCollection reject: [:anAnswerSet |
		self isGroupExcluded: (aBlock value: anAnswerSet)]