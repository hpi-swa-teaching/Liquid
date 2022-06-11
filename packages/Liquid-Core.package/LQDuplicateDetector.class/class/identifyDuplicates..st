as yet unclassified
identifyDuplicates: aCollection

	| duplicates |
	
	duplicates := aCollection copy.
	duplicates removeAll:  aCollection asSet.
	^duplicates