printing
pdfContentBody

	| content |
	content := self pdfContentStream.
	^ '<< /Length ', content size asString, ' >>', String lf,
		'stream', String lf,
		content, 'endstream'