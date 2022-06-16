test
testDuplicateMarkingWithMarking

	| collection |
	
	collection := self createCollectionTwo.
	
	self assert: (((LQDuplicateDetector new markDuplicatesIn: collection) attributesAt: 2)  includes: (TextColor color: Color red)) equals: true.
	self assert: (((LQDuplicateDetector new markDuplicatesIn: collection) attributesAt: 7)  includes: (TextColor color: Color red)) equals: false