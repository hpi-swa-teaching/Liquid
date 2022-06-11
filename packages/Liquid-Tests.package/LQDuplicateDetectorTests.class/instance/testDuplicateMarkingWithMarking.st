test
testDuplicateMarkingWithMarking

	| collection |
	
	collection := self createCollectionTwo.
	
	self assert: (((LQDuplicateDetector withDuplicatesMarkedAsText: collection) attributesAt: 2)  includes: (TextColor color: Color red)) equals: true.
	self assert: (((LQDuplicateDetector withDuplicatesMarkedAsText: collection) attributesAt: 7)  includes: (TextColor color: Color red)) equals: false