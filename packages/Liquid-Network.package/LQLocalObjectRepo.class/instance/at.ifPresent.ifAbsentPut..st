accessing
at: key ifPresent: do ifAbsentPut: anObject

	self halt.
	items at: key ifPresent: [:arg | do value] ifAbsentPut: (STON fromString: (STON toString: anObject))