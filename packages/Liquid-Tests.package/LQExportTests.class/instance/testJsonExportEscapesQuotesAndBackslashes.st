testing
testJsonExportEscapesQuotesAndBackslashes

	self assert: (LQJsonExport new jsonEscape: 'a"b\c') equals: 'a\"b\\c'
