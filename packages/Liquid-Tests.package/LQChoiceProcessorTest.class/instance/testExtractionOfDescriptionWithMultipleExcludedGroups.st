tests
testExtractionOfDescriptionWithMultipleExcludedGroups

	| choiceEntry expectedDescription actualDescription |
	
	expectedDescription := 'Lorem ipsum dolor sit amet'.
	choiceEntry := expectedDescription, '[group1,group2]'.
		
	actualDescription := processor extractDescription: choiceEntry .
	
	self assert: expectedDescription equals: actualDescription