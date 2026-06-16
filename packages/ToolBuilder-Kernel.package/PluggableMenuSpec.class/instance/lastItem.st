accessing
lastItem

	^ self items atLast: 1 ifAbsent: [nil]