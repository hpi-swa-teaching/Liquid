printing
pdfContentStream

	| stream |
	stream := WriteStream on: String new.
	self writeTextOn: stream.
	self writeImageOn: stream.
	^ stream contents