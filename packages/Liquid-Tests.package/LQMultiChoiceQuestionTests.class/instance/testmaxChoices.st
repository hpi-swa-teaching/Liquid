testing
testmaxChoices

	| numberOfChoices |
	numberOfChoices := 1234.
	self question maxNumberOfChoices: numberOfChoices.
	self assert: self question maxNumberOfChoices equals: numberOfChoices