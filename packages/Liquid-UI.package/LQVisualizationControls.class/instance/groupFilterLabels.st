group-filter
groupFilterLabels

	^ self poll availableGroups collect: [:aGroup |
		(self groupFilter isGroupExcluded: aGroup)
			ifTrue: [LQExclusionMarker new colourGrey: aGroup]
			ifFalse: [aGroup]]