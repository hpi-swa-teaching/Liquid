test
testDuplicateMarkingWithMarking

	| collection text |
	
	collection := self createCollectionOne.
	
	text := self createTextOne.
	
	self assert: (LQDuplicateDetector withDuplicatesMarkedAsText: collection) equals: text