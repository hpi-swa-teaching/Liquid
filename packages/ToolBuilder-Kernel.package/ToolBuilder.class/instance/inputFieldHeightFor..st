layout hints
inputFieldHeightFor: numLines
	"Answers the height in pixels an input field typically needs to be drawn without clipping using a ProportionalLayout and LayoutFrame."
	
	^ (TextStyle defaultFont lineGrid * 3/2) truncated * numLines