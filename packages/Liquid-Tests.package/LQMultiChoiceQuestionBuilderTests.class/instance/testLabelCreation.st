testing
testLabelCreation

	| labelText |
	labelText := 'Maximum number of choices participants can vote:'.
	self assert: self questionBuilder createMaxNumberOfChoicesLabel equals: labelText