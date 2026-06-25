printing
writeContentsOn: aStream

	aStream nextPutAll: (LQExportFormat csv formatRows: self exportRows)