accessing
at: key ifPresent: do ifAbsentPut: anObject

	items at: key ifPresent: [:arg | do value] ifAbsentPut: (STON fromString: (STON toString: anObject))