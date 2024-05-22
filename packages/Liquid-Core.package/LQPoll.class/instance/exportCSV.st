printing
exportCSV
	| filePath homeDirectory dataExportsPath |
	homeDirectory := FileDirectory default fullName.
	"dataExportsPath := homeDirectory , FileDirectory default pathNameDelimiter , 'DataExports'.
	('DataExports' on: dataExportsPath) exists
		ifFalse: ['DataExports' on: dataExportsPath create]."
	filePath := homeDirectory , FileDirectory default pathNameDelimiter , 'DataExports' , FileDirectory default pathNameDelimiter , self id , '.csv'.
	FileStream
		newFileNamed: filePath
		do: [:aStream | self printDataOn: aStream withDelimiter: ';']