printing
export
	| filePath |
	filePath := self filePath.
	(self confirmOverwrite: filePath) ifFalse: [^ self].
	self ensureDirectory.
	FileStream newFileNamed: filePath do: [:aStream | self writeContentsOn: aStream]