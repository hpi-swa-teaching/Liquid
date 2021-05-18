as yet unclassified
at: key
	^ STON fromString: (STON toString: (items at: key ifAbsent: nil))