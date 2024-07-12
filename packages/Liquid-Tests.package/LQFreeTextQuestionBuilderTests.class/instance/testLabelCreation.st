testing
testLabelCreation

	| labelText |
	labelText := 'Maximum number of characters participants can write'.
	self assert: self questionBuilder createMaxNumberOfCharactersLabel equals: labelText