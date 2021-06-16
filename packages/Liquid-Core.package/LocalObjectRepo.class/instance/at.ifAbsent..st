accessing
at: key ifAbsent: do
	^ LocalObjectDummy on: (items at: key ifAbsent: do)