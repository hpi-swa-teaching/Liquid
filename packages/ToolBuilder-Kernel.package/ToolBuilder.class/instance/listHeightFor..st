layout hints
listHeightFor: numItems
	"Answers the height in pixels a list typically needs to be drawn without clipping using a ProportionalLayout and LayoutFrame."
	
	^ Preferences standardListFont lineGridForMorphs * numItems