testing
testExportRowsStartsWithQuestionTitle

	self assert: (LQExport poll: self poll) exportRows first asArray equals: #('Question 1' 'Question 2')