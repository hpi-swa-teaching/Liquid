as yet unclassified
at: key
	^ LocalObjectDummy on: (items at: key ifAbsent: [^nil])