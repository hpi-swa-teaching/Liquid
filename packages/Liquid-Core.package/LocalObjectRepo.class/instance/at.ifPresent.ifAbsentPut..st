accessing
at: key ifPresent: do ifAbsentPut: anObject
	items at: key ifPresent: do ifAbsentPut: (STON fromString: (STON toString: anObject))