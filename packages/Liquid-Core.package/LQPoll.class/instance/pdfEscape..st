printing
pdfEscape: aString
    | escaped |
    escaped := aString copyReplaceAll: '\' with: '\\'.
    escaped := escaped copyReplaceAll: '(' with: '\('.
    escaped := escaped copyReplaceAll: ')' with: '\)'.
    ^ escaped