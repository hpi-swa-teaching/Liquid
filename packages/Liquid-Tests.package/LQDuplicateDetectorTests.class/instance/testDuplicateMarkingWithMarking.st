testing
testDuplicateMarkingWithMarking

	| collection color1 color2 |
	
	collection := self createCollectionTwo.
	color1 := (LQDuplicateDetector new markDuplicatesIn: collection) attributesAt: 2.
	color2 := ((LQDuplicateDetector new markDuplicatesIn: collection) attributesAt: 7).
	self assert: (color1 includes: (TextColor color: Color red)).
	self deny: (color2  includes: (TextColor color: Color red))