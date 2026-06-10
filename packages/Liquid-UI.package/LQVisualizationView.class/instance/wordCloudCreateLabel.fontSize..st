visualization
wordCloudCreateLabel: aString fontSize: aFontSize

	^ (StringMorph contents: aString asString font: (TextStyle default fontOfSize: aFontSize))
		color: (Color h: (Random new next * 360) s: 0.55 v: 0.45);
		yourself
