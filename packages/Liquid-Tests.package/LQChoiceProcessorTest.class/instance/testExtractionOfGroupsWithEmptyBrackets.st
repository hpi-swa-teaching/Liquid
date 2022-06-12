tests
testExtractionOfGroupsWithEmptyBrackets

	| choiceEntry expectedGroups actualGroups |
	
	expectedGroups := OrderedCollection new.
	choiceEntry := 'Lorem ipsum dolor sit amet', '[]'.
		
	actualGroups := processor extractGroups: choiceEntry .
	
	self assert: expectedGroups equals: actualGroups