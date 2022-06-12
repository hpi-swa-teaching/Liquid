tests
testExtractionOfDescriptionForBadFormattedStrings

	| choiceEntry expectedDescription actualDescription |
	
	expectedDescription := 'Lorem ipsum dolor sit amet ]'.
	choiceEntry := expectedDescription, '[gru3[, fews]'.
		
	actualDescription := processor extractDescription: choiceEntry .
	
	self assert: expectedDescription equals: actualDescription