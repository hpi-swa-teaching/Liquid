printing
buildPdfBytes
"builds the PDF in a specific necessary manner with specific objects"

	| stream offsets |
	stream := WriteStream on: String new.
	offsets := OrderedCollection new.
	self writeLine: '%PDF-1.4' on: stream.
	self writePdfObject: 1 with: self pdfCatalogBody on: stream offsets: offsets.
	self writePdfObject: 2 with: self pdfPagesBody on: stream offsets: offsets.
	self writePdfObject: 3 with: self pdfPageBody on: stream offsets: offsets.
	self writePdfObject: 4 with: self pdfContentBody on: stream offsets: offsets.
	self writePdfObject: 5 with: self pdfFontBody on: stream offsets: offsets.
	self writePdfTailOn: stream offsets: offsets.
	self writeLine: '%%EOF' on: stream.
	^ stream contents