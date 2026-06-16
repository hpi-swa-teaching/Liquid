opening
runModal: aWidget
	"Run the (previously opened) widget modally, e.g., 
	do not return control to the sender before the user has responded."
	^self subclassResponsibility