tests
testExtractionOfGroupsForWellFormattedStrings

	| choiceEntry expectedGroups actualGroups |
	expectedGroups := OrderedCollection new
		add: 'group1';
		add: 'group  2';
		yourself.
	choiceEntry := 'Lorem ipsum dolor sit amet', '[group1,group  2]'.
	actualGroups := self processor extractGroups: choiceEntry.
	self assert: expectedGroups equals: actualGroups