testing
testChoiceListwithExclusionsMarked

	| listOfExclusions |
	
	listOfExclusions := self exclusionMarker choiceListWithExclusionsMarked.
	self assert: ((listOfExclusions first) isByteString).
	self assert: ((listOfExclusions second) isText).
	self assert: (((listOfExclusions second) runs first)  includes: (TextColor gray)).
	self assert: (((listOfExclusions third) runs first)  includes: (TextColor gray))