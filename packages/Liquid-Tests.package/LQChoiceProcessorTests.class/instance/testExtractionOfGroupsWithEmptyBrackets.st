testing
testExtractionOfGroupsWithEmptyBrackets

	| choiceEntry expectedGroups actualGroups |
	expectedGroups := OrderedCollection new.
	choiceEntry := 'Lorem ipsum dolor sit amet', '[]'.
	actualGroups := self processor extractGroups: choiceEntry.
	self assert: expectedGroups equals: actualGroups