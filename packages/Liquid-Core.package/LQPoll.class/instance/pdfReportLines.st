printing
pdfReportLines
    | lines |
    lines := OrderedCollection new.
    lines add: 'Poll Results: ', self id.
    lines add: ''.
    lines addAll: (self returnDataWithDelimiter: '    ') lines.
    ^ lines