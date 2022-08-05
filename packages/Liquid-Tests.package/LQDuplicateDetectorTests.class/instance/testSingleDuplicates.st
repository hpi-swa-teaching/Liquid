testing
testSingleDuplicates

	| original onlyDuplicates |
	original := self createCollectionThreeWithDuplicates.
	onlyDuplicates := self createCollectionThreeWithoutDuplicates.
	self assert: onlyDuplicates equals: (LQDuplicateDetector new identifyDuplicates: original)