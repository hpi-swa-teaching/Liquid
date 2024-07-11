text-processing
determineMaxNumberOfCharactersFrom: aText

	^ 1 max: (aText asNumber min: 10000)