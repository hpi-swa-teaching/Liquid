tests
testLeadingWhiteSpaceTrimmingOfDescriptionWhenNoBracketsArePresent

	| choiceEntry expectedDescription actualDescription |
	
	expectedDescription := 'Lorem ipsum dolor sit amet'.
	choiceEntry := '     ', expectedDescription, ' '.
		
	actualDescription := processor extractDescription: choiceEntry .
	
	self assert: expectedDescription equals: actualDescription