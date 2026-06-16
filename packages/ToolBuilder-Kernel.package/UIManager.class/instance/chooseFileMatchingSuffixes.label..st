ui requests - files
chooseFileMatchingSuffixes: suffixList label: labelString
	"Let the user choose a file matching the given suffixes. Returns a file name."
	^self subclassResponsibility