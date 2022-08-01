tests
testExtractionOfDescriptionWithMultipleExcludedGroups

	| choiceEntry expectedDescription actualDescription |
	
	expectedDescription := 'Lorem ipsum dolor sit amet'.
	choiceEntry := expectedDescription, '[group1,group  2]'.
		
	actualDescription := self processor extractDescription: choiceEntry .
	
	self assert: expectedDescription equals: actualDescription