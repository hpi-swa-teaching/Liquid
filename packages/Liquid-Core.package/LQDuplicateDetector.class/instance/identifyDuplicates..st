duplicate-detection
identifyDuplicates: aCollection

	| duplicates |
	
	duplicates := aCollection copy.
	duplicates removeAll:  aCollection asSet.
	^duplicates