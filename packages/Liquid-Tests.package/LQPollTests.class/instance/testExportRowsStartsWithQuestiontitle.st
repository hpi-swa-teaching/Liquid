testing
testExportRowsStartsWithQuestiontitle

	self assert: self poll exportRows first asArray equals: #('Question 1' 'Question 2')