visualization
wordCloudSpiralPlace: aMorph on: aCloudMorph around: centerPoint

	| angle radius |
	angle := 0.
	radius := 0.
	600 timesRepeat: [
		| position |
		position := (centerPoint x + (radius * angle cos)) @ (centerPoint y + (radius * angle sin)).
		aMorph position: position asIntegerPoint - (aMorph extent // 2).
		(self wordCloudCollides: aMorph on: aCloudMorph) ifFalse: [^ aCloudMorph addMorph: (self wordCloudClamp: aMorph in: aCloudMorph)].
		angle := angle + 0.35.
		radius := radius + 1.5].
	aCloudMorph addMorph: (self wordCloudClamp: aMorph in: aCloudMorph)
