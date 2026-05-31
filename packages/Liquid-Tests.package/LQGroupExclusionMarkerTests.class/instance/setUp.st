running
setUp

	super setUp.
	self exclusionMarker: (LQGroupExclusionMarker newFrom: self createChoiceList and: self excludedGroup)