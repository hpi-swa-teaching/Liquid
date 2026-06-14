testing
testPdfExportHandlesFreeTextQuestion

	| filePath fileStream buffer questionCount |
	self poll pollDraft questionList add: (LQFreeTextQuestion new title: 'hello world').
	self poll addAnswerSet: self as1.
	questionCount := self poll questionList size.
	filePath := LQPoll pathToExport, FileDirectory default pathNameDelimiter, self poll id, '.pdf'.
	FileDirectory default deleteFileNamed: filePath ifAbsent: [].
	self poll exportPDF.
	fileStream := FileStream readOnlyFileNamed: filePath.
	fileStream binary.
	buffer := fileStream contents asString.
	fileStream close.
	1 to: questionCount do: [:index | self assert: (buffer includesSubstring: '/Im', index asString)]