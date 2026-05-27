visualization
wordCloudPlaceMorph: aMorph on: aCloudMorph

	| center |
	center := aCloudMorph bounds center asIntegerPoint.
	aMorph position: center - (aMorph extent // 2).
	(self wordCloudCollides: aMorph on: aCloudMorph) ifFalse: [^ aCloudMorph addMorph: (self wordCloudClamp: aMorph in: aCloudMorph)].
	self wordCloudSpiralPlace: aMorph on: aCloudMorph around: center
