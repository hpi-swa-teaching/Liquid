tests
testExtractionOfDescriptionForWellFormattedStrings

	| choiceEntry expectedDescription actualDescription |
	
	expectedDescription := 'Lorem ipsum dolor sit amet'.
	choiceEntry := expectedDescription, '[group1]'.
		
	actualDescription := self processor extractDescription: choiceEntry .
	
	self assert: expectedDescription equals: actualDescription