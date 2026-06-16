running
setUp

	super setUp.
	self exclusionMarker: (LQExclusionMarker newFrom: self createChoiceList and: self excludedGroup)