testing
testLabelCreation

	self assert: self questionBuilder createMaxNumberOfChoicesLabel equals: 'Maximum number of choices participants can vote:'
	