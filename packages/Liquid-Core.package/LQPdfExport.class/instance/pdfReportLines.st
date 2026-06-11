printing
pdfReportLines

	| lines |
	lines := OrderedCollection new.
	lines add: 'Poll Results: ', poll id.
	lines add: ''.
	lines addAll: (poll returnDataWithDelimiter: '        ') lines.
	^ lines