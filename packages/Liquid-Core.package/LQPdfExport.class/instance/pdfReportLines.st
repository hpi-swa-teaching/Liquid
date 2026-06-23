printing
pdfReportLines

	| lines format|
	lines := OrderedCollection new.
	lines add: 'Poll Results: ', poll id.
	lines add: ''.
	format := LQExportFormat plainWithDelimiter: '        '.
	self exportRows do: [:row | lines add: (format formatRow: row)].
	^ lines