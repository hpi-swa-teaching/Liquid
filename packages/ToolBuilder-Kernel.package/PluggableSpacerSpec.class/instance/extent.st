layout hints
extent

	^ extent ifNil: [(TextStyle defaultFont widthOf: $x) asPoint]