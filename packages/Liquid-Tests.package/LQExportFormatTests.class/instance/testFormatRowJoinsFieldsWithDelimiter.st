testing
testFormatRowJoinsFieldsWithDelimiter

	self assert: (LQExportFormat csv formatRow: #('a' 'b' 'c')) equals: 'a,b,c'.