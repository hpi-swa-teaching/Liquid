printing
confirmOverwrite: aFilePath

	(FileDirectory default fileExists: aFilePath) ifFalse: [^ true].
	(UIManager default confirm: 'A poll ', self fileType asUppercase, ' file with that id already exists. Delete it and recreate it?') ifFalse: [^ false].
	FileDirectory default deleteFileNamed: aFilePath.
	^ true