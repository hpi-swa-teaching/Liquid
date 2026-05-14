printing
writePdfContentOn: aStream offsets: anOffsets
    | content |
    content := self pdfContentStream.
    anOffsets add: aStream position.
    self writeLine: '4 0 obj' on: aStream.
    self writeLine: '<< /Length ', content size asString, ' >>' on: aStream.
    self writeLine: 'stream' on: aStream.
    aStream nextPutAll: content.
    self writeLine: 'endstream' on: aStream.
    self writeLine: 'endobj' on: aStream