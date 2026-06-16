ui requests
confirm: aString orCancel: cancelBlock title: titleString
	"Put up a yes/no/cancel menu with caption aString, and titleString to label the dialog.
	Answer true if  the response is yes, false if no. If cancel is chosen, evaluate cancelBlock.
	This is a modal question--the user must respond yes or no."
	^self subclassResponsibility