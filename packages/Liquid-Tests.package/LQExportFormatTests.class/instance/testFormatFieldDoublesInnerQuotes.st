testing
testFormatFieldDoublesInnerQuotes

	self assert: (LQExportFormat csv formatField: 'Hello "World"') equals: '"Hello ""World"""'