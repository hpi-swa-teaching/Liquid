testing
testAsStringWithTitle
	self question title: 'PrioQuestion'.
	self assert: self question asString equals: 'PrioQuestion'.