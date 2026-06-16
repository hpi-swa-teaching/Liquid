ui requests
confirm: queryString title: titleString
	"Put up a yes/no menu with caption queryString, and titleString to label the dialog.
	Answer true if the response is yes, false if no. This is a modal question--the user
	must respond yes or no."
	^self subclassResponsibility