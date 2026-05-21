printing
buildPdfBytes
    | stream offsets |
    stream := WriteStream on: String new.
    offsets := OrderedCollection new.
    self writeLine: '%PDF-1.4' on: stream.
    self writePdfObject: 1 with: self pdfCatalogBody on: stream offsets: offsets.
    self writePdfObject: 2 with: self pdfPagesBody on: stream offsets: offsets.
    self writePdfObject: 3 with: self pdfPageBody on: stream offsets: offsets.
    self writePdfContentOn: stream offsets: offsets.
    self writePdfObject: 5 with: self pdfFontBody on: stream offsets: offsets.
    self writePdfTailOn: stream offsets: offsets.
    self writeLine: '%%EOF' on: stream.
    ^ stream contents