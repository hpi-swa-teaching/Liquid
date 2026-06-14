printing
pdfXObject

	| stream |
	stream := WriteStream on: String new.
	1 to: self numberOfImages do: [:index |
		stream nextPutAll: '/Im', index asString, ' ', (self fixedPdfObjectCount + index) asString, ' 0 R '].
	^ stream contents