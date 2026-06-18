group-filter
groupFilterLabels

	^ self poll availableGroups collect: [:aGroup |
		(self poll excludedGroups includes: aGroup)
			ifTrue: [LQExclusionMarker new colourGrey: aGroup]
			ifFalse: [aGroup]]