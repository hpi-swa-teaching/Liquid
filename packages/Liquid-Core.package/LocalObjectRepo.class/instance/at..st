as yet unclassified
at: key
	^ LocalObjectDummy initializeOn: (items at: key ifAbsent: [^nil])