group-filter
groupFilterLabels

	^ self poll availableGroups collect: [:aGroup |
		(self poll isGroupExcluded: aGroup)
			ifTrue: [LQExclusionMarker new colourGrey: aGroup]
			ifFalse: [aGroup]]