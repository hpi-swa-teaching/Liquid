testing
testExportRowsAddsOneRowPerAnswerSet

	self poll addAnswerSet: self as1.
	self assert: (LQExport poll: self poll) exportRows size equals: 2.
	self assert: (LQExport poll: self poll) exportRows last size equals: 2