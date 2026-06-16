ui requests - files
chooseDirectory: label from: dir
	"Let the user choose a directory. Returns a proper directory."
	"UIManager default chooseDirectory: 'Choose one' from: FileDirectory default"
	^self subclassResponsibility