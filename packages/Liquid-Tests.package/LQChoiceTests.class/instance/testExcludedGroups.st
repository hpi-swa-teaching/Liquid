testing
testExcludedGroups

	| choiceEntry expectedGroups actualGroups |
	
	expectedGroups := OrderedCollection new
		add: 'group1';
		add: 'group2';
		yourself.
	choiceEntry := 'Lorem ipsum dolor sit amet', '[group1,group2]'.
	actualGroups := (LQChoice newFrom: choiceEntry) excludedGroups.
	self assert: expectedGroups equals: actualGroups