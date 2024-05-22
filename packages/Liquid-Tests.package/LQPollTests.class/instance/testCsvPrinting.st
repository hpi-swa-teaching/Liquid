testing
testCsvPrinting
	| stream filePath fileContent homeDirectory aStream bool |
	self poll addAnswerSet: self as1.
	self poll exportCSV.
	homeDirectory := FileDirectory default fullName.
	filePath := homeDirectory , FileDirectory default pathNameDelimiter , 'DataExports' , FileDirectory default pathNameDelimiter , self poll id , '.csv'.
	Transcript show: filePath , Character cr.
	stream := FileStream readOnlyFileNamed: filePath.
	fileContent := stream contents.
	Transcript show: fileContent.
	stream close.
	aStream := WriteStream on: String new.
	self poll printDataOn: aStream withDelimiter: ';'.
	aStream close.
	Transcript show: aStream contents.
	self halt.
	bool := fileContent allButLast asString = aStream contents allButLast asString.
	Transcript show: (bool).
	self assert: bool