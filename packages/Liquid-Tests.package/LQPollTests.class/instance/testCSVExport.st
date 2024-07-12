testing
testCSVExport

	| filePath fileStream buffer match |
	self poll addAnswerSet: self as1.
	filePath := LQPoll pathToExport, FileDirectory default pathNameDelimiter, self poll id, '.csv'.
	FileDirectory default deleteFileNamed: filePath ifAbsent: [].
	self poll exportCSV.
	fileStream := FileStream fileNamed: filePath.
	buffer := fileStream contents.
	match := poll returnDataWithDelimiter: ';'.
	self assert: match equals: buffer.
	fileStream close