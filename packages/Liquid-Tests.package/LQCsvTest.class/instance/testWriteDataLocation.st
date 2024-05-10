as yet unclassified
testWriteDataLocation
"final test to export data"
	| stream filePath fileContent homeDirectory |
	homeDirectory := FileDirectory default fullName.
	filePath := homeDirectory , FileDirectory default pathNameDelimiter , 'DataExports' , FileDirectory default pathNameDelimiter , 'pollExport.csv'.
	stream := FileStream fileNamed: filePath.
	fileContent := stream contents.
	stream close.
	self assert: fileContent equals: 'question1;question2;question3;
a;d:e;b;
'