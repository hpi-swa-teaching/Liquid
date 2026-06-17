testing
testJsonExport

	| filePath fileStream buffer |
	self poll addAnswerSet: self as1.
	filePath := LQExport pathToExport, FileDirectory default pathNameDelimiter, self poll id, '.json'.
	FileDirectory default deleteFileNamed: filePath ifAbsent: [].
	(LQJsonExport poll: self poll) export.
	fileStream := FileStream fileNamed: filePath.
	buffer := fileStream contents.
	self assert: buffer equals: '[{"Question 1":["Q1A1","Q1A2"],"Question 2":["Q1A2"]}]'.
	fileStream close