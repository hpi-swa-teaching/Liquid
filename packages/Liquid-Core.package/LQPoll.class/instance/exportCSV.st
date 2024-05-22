printing
exportCSV
	| filePath directory |
	directory := FileDirectory on: self class pathToExport.
	directory exists
		ifFalse: [FileDirectory default createDirectory: self class pathToExport]. 
	filePath := self class pathToExport, FileDirectory default pathNameDelimiter , self id , '.csv'.
	(FileDirectory default fileExists: filePath)
		ifTrue: [FileDirectory default deleteFileNamed: filePath].
	FileStream
		newFileNamed: filePath
		do: [:aStream | self printDataOn: aStream withDelimiter: ';']