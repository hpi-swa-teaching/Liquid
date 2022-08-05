testing
testNoDuplicate

	| original onlyDuplicates |
	original := self createCollectionWithNoDuplicates.
	onlyDuplicates := {} asOrderedCollection.
	self assert: onlyDuplicates equals: (LQDuplicateDetector new identifyDuplicates: original)