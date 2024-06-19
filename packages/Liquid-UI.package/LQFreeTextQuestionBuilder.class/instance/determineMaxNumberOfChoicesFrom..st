text-processing
determineMaxNumberOfChoicesFrom: aText

	^ (1 max: (aText asNumber min: 10000))