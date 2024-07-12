testing
testAsString

	| userSet |
	userSet := LQUserSet new.
	userSet title: 'Lorem ipsum'.
	self assert: userSet asString equals: 'Lorem ipsum'