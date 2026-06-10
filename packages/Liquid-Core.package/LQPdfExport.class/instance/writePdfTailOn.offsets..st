printing
writePdfTailOn: aStream offsets: anOffsets

	| xrefPosition |
	xrefPosition := aStream position.
	self writePdfXrefOn: aStream offsets: anOffsets.
	self writeLine: 'trailer' on: aStream.
	self writeLine: '<< /Size ', (anOffsets size + 1) asString, ' /Root 1 0 R >>' on: aStream.
	self writeLine: 'startxref' on: aStream.
	self writeLine: xrefPosition asString on: aStream