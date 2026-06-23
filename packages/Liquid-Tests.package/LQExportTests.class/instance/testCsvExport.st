testing
testCsvExport

	| filePath fileStream buffer match |
	self poll addAnswerSet: self as1.
	filePath := LQExport pathToExport, FileDirectory default pathNameDelimiter, self poll id, '.csv'.
	FileDirectory default deleteFileNamed: filePath ifAbsent: [].
	(LQCsvExport poll: self poll) export.
	fileStream := FileStream fileNamed: filePath.
	buffer := fileStream contents.
	match := LQExportFormat csv formatRows: (LQExport poll: self poll) exportRows.
	self assert: match equals: buffer.
	fileStream close