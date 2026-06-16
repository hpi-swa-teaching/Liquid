ui requests
confirm: queryString title: titleString trueChoice: trueChoice falseChoice: falseChoice
	"Put up a yes/no menu with caption queryString, and titleString to label the dialog.
	The actual wording for the two choices will be as provided in the trueChoice and
	falseChoice parameters. Answer true if the response is the true-choice, false if it
	is the false-choice. This is a modal question -- the user must respond one way or
	the other."
	^self subclassResponsibility