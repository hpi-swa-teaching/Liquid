printing
pdfContentStream

	| stream imageWidth imageHeight |
	stream := WriteStream on: String new.
	stream
		nextPutAll: 'BT'; nextPutAll: String lf;
		nextPutAll: '/F1 12 Tf'; nextPutAll: String lf;
		nextPutAll: '14 TL'; nextPutAll: String lf;
		nextPutAll: '72 800 Td'; nextPutAll: String lf.
	self pdfReportLines do: [:line |
		stream
			nextPutAll: '(', (self pdfEscape: line), ') Tj'; nextPutAll: String lf;
			nextPutAll: 'T*'; nextPutAll: String lf].
	stream nextPutAll: 'ET'; nextPutAll: String lf.
	imageWidth := 450.
	imageHeight := (imageWidth * chart height / chart width) rounded.
	stream
		nextPutAll: 'q'; nextPutAll: String lf;
		nextPutAll: imageWidth asString, ' 0 0 ', imageHeight asString, ' 72 350 cm'; nextPutAll: String lf;
		nextPutAll: '/Im1 Do'; nextPutAll: String lf;
		nextPutAll: 'Q'; nextPutAll: String lf.
	^ stream contents