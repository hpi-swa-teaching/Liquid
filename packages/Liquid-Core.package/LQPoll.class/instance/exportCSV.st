printing
exportCSV
	| filePath directory proceed |
	directory := FileDirectory on: self class pathToExport.
	directory exists
		ifFalse: [FileDirectory default createDirectory: self class pathToExport].
	filePath := self class pathToExport , FileDirectory default pathNameDelimiter , self id , '.csv'.
	proceed := true.
	(FileDirectory default fileExists: filePath)
		ifTrue: [| confirmDeletion |
			confirmDeletion := UIManager default confirm: 'A poll CSV file with that id already exists. Delete it and recreate it?'.
			confirmDeletion
				ifTrue: [FileDirectory default deleteFileNamed: filePath]
				ifFalse: [proceed := false]].
	proceed 
		ifTrue: [FileStream
				newFileNamed: filePath
				do: [:aStream | self printDataOn: aStream withDelimiter: ';']]