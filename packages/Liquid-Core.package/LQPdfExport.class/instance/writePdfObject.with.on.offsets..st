printing
writePdfObject: anId with: aBody on: aStream offsets: anOffsets

	anOffsets add: aStream position.
	self writeLine: anId asString, ' 0 obj' on: aStream.
	self writeLine: aBody on: aStream.
	self writeLine: 'endobj' on: aStream