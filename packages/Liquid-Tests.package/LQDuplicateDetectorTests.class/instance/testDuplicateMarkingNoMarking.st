testing
testDuplicateMarkingNoMarking

	| collection text |
	collection := self createCollectionOne.
	text := self createTextOne.
	self assert: (LQDuplicateDetector new markDuplicatesIn: collection) equals: text