duplicate-detection
withDuplicatesMarkedAsText: aCollection

	| duplicates |
	
	duplicates := self identifyDuplicates: aCollection.
	
	^(self mark: duplicates in: aCollection with: (TextColor color: Color red))