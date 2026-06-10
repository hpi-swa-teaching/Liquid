visualization
populateWordCloud: aCloudMorph withData: frequencyData

	| sortedEntries maxCount |
	aCloudMorph removeAllMorphs.
	(frequencyData isNil or: [frequencyData isEmpty]) ifTrue: [
		aCloudMorph addMorph: (StringMorph contents: 'No answers yet' font: (self wordCloudDefaultFont)).
		^ self].
	sortedEntries := frequencyData associations sorted: [:a :b |
		a value = b value
			ifTrue: [a key size <= b key size]
			ifFalse: [a value >= b value]].
	maxCount := sortedEntries first value max: 1.
	sortedEntries do: [:assoc |
		| labelMorph |
		labelMorph := self
			wordCloudCreateLabel: assoc key
			fontSize: (self wordCloudFontSizeForCount: assoc value maxCount: maxCount).
		self wordCloudPlaceMorph: labelMorph on: aCloudMorph]
