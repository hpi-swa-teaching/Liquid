test
testDuplicateMarkingNoMarking

	| collection text |
	
	collection := self createCollectionOne.
	
	text := self createTextOne.
	
	self assert: (LQDuplicateDetector new withDuplicatesMarkedAsText: collection) equals: text