layout hints
helpFieldHeightFor: numLines
	"Answers the height in pixels a help field typically needs to be drawn without clipping using a ProportionalLayout and LayoutFrame."
	
	^ (Preferences standardBalloonHelpFont lineGrid * 3/2) truncated * numLines