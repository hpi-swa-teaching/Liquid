printing
pdfContentStream
    | lf stream |
    lf := String with: Character lf.
    stream := WriteStream on: String new.
    stream
        nextPutAll: 'BT'; nextPutAll: lf;
        nextPutAll: '/F1 12 Tf'; nextPutAll: lf;
        nextPutAll: '14 TL'; nextPutAll: lf;
        nextPutAll: '72 750 Td'; nextPutAll: lf.
    self pdfReportLines do: [:line |
        stream
            nextPutAll: '(', (self pdfEscape: line), ') Tj'; nextPutAll: lf;
            nextPutAll: 'T*'; nextPutAll: lf].
    stream nextPutAll: 'ET'; nextPutAll: lf.
    ^ stream contents