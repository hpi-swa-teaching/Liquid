testing
testFormatRowQuotesFieldContainingComma

	self assert: (LQExportFormat csv formatRow: {'a'. 'b,c'. 'd'}) equals: 'a,"b,c",d'