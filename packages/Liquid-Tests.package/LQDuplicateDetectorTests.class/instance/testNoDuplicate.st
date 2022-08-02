test
testNoDuplicate

	| original onlyDuplicates |
	
	original := {1 . 2 . 3 . 4 . 5 . 6} asOrderedCollection.
	onlyDuplicates := {} asOrderedCollection.
	self assert: onlyDuplicates equals: (LQDuplicateDetector new identifyDuplicates: original)