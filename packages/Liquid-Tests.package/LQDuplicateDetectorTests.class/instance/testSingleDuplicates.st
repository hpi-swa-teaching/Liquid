testing
testSingleDuplicates

	| original onlyDuplicates |
	original := {1 . 1 . 2 . 2 . 3 . 3} asOrderedCollection.
	onlyDuplicates := {1 . 2 . 3} asOrderedCollection.
	self assert: onlyDuplicates equals: (LQDuplicateDetector new identifyDuplicates: original)