accessing
getMarkers

	| ranking |
	ranking := OrderedCollection new.
	self question choiceList do: [:choice |
		(self selectedChoices includes: choice description)
			ifTrue: [ranking add: 'X']
			ifFalse: [
				ranking add: ' '
				"value to show that this is not yet ranked"]].
	^ ranking