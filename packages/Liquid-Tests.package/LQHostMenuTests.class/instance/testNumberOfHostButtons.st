testing
testNumberOfHostButtons
	| menu count |
	menu := LQHostMenu new.
	count := menu numberOfHostButtons.
	
	self assert: count isInteger.
	self assert: count > 0.