A LQExport is an asbstract super class that contains the methods for exporting a poll to a file. It creates the file path, holds the poll, confirms overwrites and writes the file (export). Subclasses define fileType and writeContentsOn:. 
Concrete subclasses: LQCsvExport, LQPdfExport.

Instance Variables
	poll:		<aPoll>

poll
	- is the poll that is being exported. 
