printing
exportPDF

	| filePath directory pdfBytes chart |
	directory := FileDirectory on: self class pathToExport.
	directory exists ifFalse: [FileDirectory default createDirectory: self class pathToExport].
	filePath := self class pathToExport, FileDirectory default pathNameDelimiter, self id, '.pdf'.
	(FileDirectory default fileExists: filePath) ifTrue: [
		| confirmDeletion |
		confirmDeletion := UIManager default confirm: 'A poll PDF file with that id already exists. Delete it and recreate it?'.
		confirmDeletion ifFalse: [^ self].
		FileDirectory default deleteFileNamed: filePath].
	chart := (LQVisualizationView newWithPoll: self) renderPictureFrom: self questionList first.
	pdfBytes := (LQPdfExport poll: self chart: chart) buildPdfBytes.
	FileStream
		newFileNamed: filePath
		do: [:aStream | aStream binary; nextPutAll: pdfBytes asByteArray]