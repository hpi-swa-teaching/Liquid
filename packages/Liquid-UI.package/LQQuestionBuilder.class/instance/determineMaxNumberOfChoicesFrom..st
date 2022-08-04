text-processing
determineMaxNumberOfChoicesFrom: aText

	^ (1 max: (aText asNumber min: self question choiceDescriptions size))