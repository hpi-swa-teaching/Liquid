testing
testExtractionOfDescriptionForBadFormattedStrings

	| choiceEntry expectedDescription actualDescription |
	expectedDescription := 'Lorem ipsum dolor sit amet ]'.
	choiceEntry := expectedDescription, '[gru3[, fews]'.
	actualDescription := self processor extractDescription: choiceEntry.
	self assert: expectedDescription equals: actualDescription