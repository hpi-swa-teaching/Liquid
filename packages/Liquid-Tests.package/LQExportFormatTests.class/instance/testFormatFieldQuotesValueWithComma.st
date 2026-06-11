testing
testFormatFieldQuotesValueWithComma

	self
		assert: (LQExportFormat csv formatField: 'Hallo, Welt')
		equals: '"Hallo, Welt"'