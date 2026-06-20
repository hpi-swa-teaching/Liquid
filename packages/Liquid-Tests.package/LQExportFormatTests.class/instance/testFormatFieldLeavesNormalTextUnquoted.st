testing
testFormatFieldLeavesNormalTextUnquoted

	self assert: (LQExportFormat csv formatField: 'simpel') equals: 'simpel'.