visualization
wordCloudClamp: aMorph in: aCloudMorph

	| position maxPosition |
	maxPosition := (aCloudMorph bounds bottomRight - aMorph extent) max: 0 @ 0.
	position := aMorph position.
	aMorph position: ((position x max: 0) min: maxPosition x) @ ((position y max: 0) min: maxPosition y).
	^ aMorph
