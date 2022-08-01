tests
testExtractionOfDescriptionWithoutExcludedGroups

	| choiceEntry expectedDescription actualDescription |
	
	expectedDescription := 'Lorem ipsum dolor sit amet'.
	choiceEntry := expectedDescription.
		
	actualDescription := self processor extractDescription: choiceEntry .
	
	self assert: expectedDescription equals: actualDescription