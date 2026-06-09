testing
testPDFExport

	| filePath fileStream buffer |
	self poll addAnswerSet: self as1.
	filePath := LQPoll pathToExport, FileDirectory default pathNameDelimiter, self poll id, '.pdf'.
	FileDirectory default deleteFileNamed: filePath ifAbsent: [].
	self poll exportPDF.
	fileStream := FileStream readOnlyFileNamed: filePath.
	fileStream binary.
	buffer := fileStream contents asString.
	fileStream close.
	self assert: (buffer beginsWith: '%PDF').
	self assert: (buffer includesSubstring: '/Subtype /Image').
	self assert: (buffer includesSubstring: 'Poll Results: ', self poll id).