printing
pdfContentStream

	| stream |
	stream := WriteStream on: String new.
	stream
		nextPutAll: 'BT'; nextPutAll: String lf;
		nextPutAll: '/F1 12 Tf'; nextPutAll: String lf;
		nextPutAll: '14 TL'; nextPutAll: String lf;
		nextPutAll: '72 800 Td'; nextPutAll: String lf.
	self pdfReportLines do: [:line |
		stream
			nextPutAll: '(', (self pdfEscape: line), ') Tj'; nextPutAll: String lf;
			nextPutAll: 'T*'; nextPutAll: String lf];
			nextPutAll: 'ET'; nextPutAll: String lf.
	^ stream contents