testing
testPdfExportContainsOneImagePerQuestion

	| filePath fileStream buffer questionCount |
	self poll addAnswerSet: self as1.
	self poll addAnswerSet: self as2.
	questionCount := self poll questionList size.
	filePath := LQPoll pathToExport, FileDirectory default pathNameDelimiter, self poll id, '.pdf'.
	FileDirectory default deleteFileNamed: filePath ifAbsent: [].
	self poll exportPDF.
	fileStream := FileStream readOnlyFileNamed: filePath.
	fileStream binary.
	buffer := fileStream contents asString.
	fileStream close.
	1 to: questionCount do: [:index | self assert: (buffer includesSubstring: '/Im', index asString)]