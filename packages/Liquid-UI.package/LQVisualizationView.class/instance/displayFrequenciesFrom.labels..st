data
displayFrequenciesFrom: frequencies labels: displayLabels

	^ displayLabels keys inject: Dictionary new into: [:result :key |
		result at: (displayLabels at: key) put: (frequencies at: key).
		result]
