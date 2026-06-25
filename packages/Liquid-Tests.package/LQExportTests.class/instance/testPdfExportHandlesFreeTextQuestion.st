testing
testPdfExportHandlesFreeTextQuestion

	| filePath fileStream buffer |
	self poll pollDraft questionList add: (LQFreeTextQuestion new title: 'hello world').
	self poll addAnswerSet: self as1.
	self poll addAnswerSet: self as2.
	filePath := LQExport pathToExport, FileDirectory default pathNameDelimiter, self poll id, '.pdf'.
	FileDirectory default deleteFileNamed: filePath ifAbsent: [].
	self poll exportPDF.
	fileStream := FileStream readOnlyFileNamed: filePath.
	fileStream binary.
	buffer := fileStream contents asString.
	fileStream close.
	self assert: (buffer includesSubstring: '/Im1').
	self assert: (buffer includesSubstring: '/Im2').
	self deny: (buffer includesSubstring: '/Im3')