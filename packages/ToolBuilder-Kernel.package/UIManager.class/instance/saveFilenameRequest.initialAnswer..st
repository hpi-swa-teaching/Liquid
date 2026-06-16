ui requests - files
saveFilenameRequest: queryString initialAnswer: defaultAnswer 
	"Open a FileSaverDialog to ask for a place and filename to use for saving a file. The initial suggestion for the filename is defaultAnswer but the user may choose any existing file or type in a new name entirely. Returns a file name."

	^self subclassResponsibility