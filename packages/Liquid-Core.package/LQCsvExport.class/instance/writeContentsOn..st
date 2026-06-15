printing
writeContentsOn: aStream

	aStream nextPutAll: (LQExportFormat csv formatRows: poll exportRows)