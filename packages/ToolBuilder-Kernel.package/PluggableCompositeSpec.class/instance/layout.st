accessing
layout
	"Answer the symbol indicating the layout of the composite:
		#proportional (default): Use frames as appropriate.
		#horizontal: Arrange the elements horizontally
		#vertical: Arrange the elements vertically.
	"
	^layout ifNil:[#proportional]