printing
exportCSVDownloadsPath
	| stream filePath homeDirectory |
	homeDirectory := FileDirectory default fullName.
	filePath := homeDirectory , FileDirectory default pathNameDelimiter , 'DataExports' , FileDirectory default pathNameDelimiter , 'pollExport.csv'.
	stream := FileStream newFileNamed: filePath.
	self printDataOn: stream withDelimiter: ';'.
	^ stream contents