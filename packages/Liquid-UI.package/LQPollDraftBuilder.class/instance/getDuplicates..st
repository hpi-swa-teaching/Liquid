verifying
getDuplicates: aCollection

	| duplicates |
	
	duplicates := aCollection copy.
	duplicates removeAll:  aCollection asSet.
	^duplicates