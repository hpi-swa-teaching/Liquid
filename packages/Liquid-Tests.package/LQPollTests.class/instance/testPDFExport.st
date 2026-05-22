testing
testPDFExport

	| filePath fileStream buffer match |
	self poll addAnswerSet: self as1.
	filePath := LQPoll pathToExport, FileDirectory default pathNameDelimiter, self poll id, '.pdf'.
	FileDirectory default deleteFileNamed: filePath ifAbsent: [].
	self poll exportPDF.
	fileStream := FileStream fileNamed: filePath.
	buffer := fileStream contents.
	match := self poll buildPdfBytes.
	self assert: match equals: buffer.
	fileStream close