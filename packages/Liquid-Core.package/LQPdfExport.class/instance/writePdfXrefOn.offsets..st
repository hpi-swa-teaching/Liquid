printing
writePdfXrefOn: aStream offsets: anOffsets

	self writeLine: 'xref' on: aStream.
	self writeLine: '0 ', (anOffsets size + 1) asString on: aStream.
	self writeLine: '0000000000 65535 f ' on: aStream.
	anOffsets do: [:offset | self writeLine: (offset printPaddedWith: $0 to: 10), ' 00000 n ' on: aStream]