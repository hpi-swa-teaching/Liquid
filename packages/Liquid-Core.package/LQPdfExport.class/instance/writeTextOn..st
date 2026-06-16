printing
writeTextOn: aStream

	self writeLine: 'BT' on: aStream.
	self writeLine: ('/F1 ', self fontSize asString, ' Tf') on: aStream.
	self writeLine: (self lineHeight asString, ' TL') on: aStream.
	self writeLine: (self leftMargin asString, ' ', self textStart asString, ' Td') on: aStream.
	self pdfReportLines do: [:line |
		self writeLine: ('(', (self pdfEscape: line), ') Tj') on: aStream.
		self writeLine: 'T*' on: aStream].
	self writeLine: 'ET' on: aStream