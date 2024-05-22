testing
testCSVExport
	| homeDirectory filePath fileStream buffer match |
	self poll addAnswerSet: self as1.
	self poll exportCSV.
	
	homeDirectory := FileDirectory default fullName.
	filePath := homeDirectory , FileDirectory default pathNameDelimiter , 'DataExports' , FileDirectory default pathNameDelimiter , self poll id , '.csv'.
	fileStream := FileStream fileNamed: filePath.
	buffer := fileStream contents.
	match := 'Question 1;Question 2;
Q1A1:Q1A2;Q1A2;
'.
	self assert: match equals: buffer. 
	fileStream close. 