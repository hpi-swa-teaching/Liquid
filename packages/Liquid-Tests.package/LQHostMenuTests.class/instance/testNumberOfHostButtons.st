testing
testNumberOfHostButtons
	| menu count |
	menu := LQHostMenu new.
	count := menu numberOfHostButtons.
	
	self assert: count isInteger 
		description: 'The number of host buttons must be an integer value'.
	self assert: count > 0 
		description: 'There must be at least one host button defined in the menu'.