testing
testCSVExport
	| filePath fileStream buffer match |
	self poll addAnswerSet: self as1.
	filePath := LQPoll pathToExport , FileDirectory default pathNameDelimiter , self poll id , '.csv'.
	FileDirectory default
		deleteFileNamed: filePath
		ifAbsent: []. 
	self poll exportCSV.
	fileStream := FileStream fileNamed: filePath.
	buffer := fileStream contents.
	match := 'Question 1;Question 2;
Q1A1:Q1A2;Q1A2;
'.
	self assert: match equals: buffer.
	fileStream close