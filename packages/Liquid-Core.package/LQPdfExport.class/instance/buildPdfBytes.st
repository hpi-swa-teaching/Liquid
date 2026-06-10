printing
buildPdfBytes
	"builds the PDF in a specific necessary manner with specific objects"

	| stream offsets bodies |
	stream := WriteStream on: String new.
	offsets := OrderedCollection new.
	bodies := {
		self pdfCatalogBody.self pdfPagesBody.self pdfPageBody.self pdfContentBody.self pdfFontBody.self pdfImageBody }.
	self writeLine: '%PDF-1.4' on: stream.
	bodies doWithIndex: [:body :i | self writePdfObject: i with: body on: stream offsets: offsets].
	self writePdfTailOn: stream offsets: offsets.
	self writeLine: '%%EOF' on: stream.
	^ stream contents