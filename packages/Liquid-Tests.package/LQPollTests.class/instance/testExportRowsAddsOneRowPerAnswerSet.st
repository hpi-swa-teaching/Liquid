testing
testExportRowsAddsOneRowPerAnswerSet

	self poll addAnswerSet: self as1.
	self assert: self poll exportRows size equals: 2.
	self assert: self poll exportRows last size equals: 2