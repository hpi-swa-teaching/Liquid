testing
testChoiceListwithExclusionsMarked

	| listOfExclusions |
	
	listOfExclusions := self exclusionMarker choiceListWithExclusionsMarked.
	self assert: ((listOfExclusions first) isByteString).
	self assert: ((listOfExclusions second) isText).
	self assert: (((listOfExclusions second) attributesAt: 1)  includes: (TextColor gray)).
	self assert: (((listOfExclusions third) attributesAt: 1)  includes: (TextColor gray))