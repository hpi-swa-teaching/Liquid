testing
testChoiceListwithExclusionsMarked

	self assert: ((self exclusionMarker choiceListWithExclusionsMarked first) isByteString).
	self assert: ((self exclusionMarker choiceListWithExclusionsMarked second) isText).
	self assert: (((self exclusionMarker choiceListWithExclusionsMarked second) attributesAt: 1)  includes: (TextColor gray)).
	self assert: (((self exclusionMarker choiceListWithExclusionsMarked third) attributesAt: 1)  includes: (TextColor gray))