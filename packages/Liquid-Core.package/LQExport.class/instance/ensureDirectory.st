printing
ensureDirectory

	| directory |
	directory := FileDirectory on: self class pathToExport.
	directory exists ifFalse: [FileDirectory default createDirectory: self class pathToExport]
