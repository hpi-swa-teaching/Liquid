printing
exportPDF
    | filePath directory pdfBytes |
    directory := FileDirectory on: self class pathToExport.
    directory exists ifFalse: [FileDirectory default createDirectory: self class pathToExport].
    filePath := self class pathToExport, FileDirectory default pathNameDelimiter, self id, '.pdf'.
    (FileDirectory default fileExists: filePath) ifTrue: [ | confirmDeletion |
        confirmDeletion := UIManager default confirm: 'A poll PDF file with that id already exists. Delete it and recreate it?'.
        confirmDeletion ifFalse: [^ self].
        FileDirectory default deleteFileNamed: filePath].
    pdfBytes := self buildPdfBytes.
    FileStream
        newFileNamed: filePath
        do: [:aStream | aStream binary. aStream nextPutAll: pdfBytes asByteArray]