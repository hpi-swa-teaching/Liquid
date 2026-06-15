testing
testCsvExport

	| filePath fileStream buffer match |
	self poll addAnswerSet: self as1.
	filePath := LQPoll pathToExport, FileDirectory default pathNameDelimiter, self poll id, '.csv'.
	FileDirectory default deleteFileNamed: filePath ifAbsent: [].
	(LQCsvExport poll: self poll) export.
	fileStream := FileStream fileNamed: filePath.
	buffer := fileStream contents.
	match := LQExportFormat csv formatRows: self poll exportRows.
	self assert: match equals: buffer.
	fileStream close