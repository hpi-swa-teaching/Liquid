accessing
at: key ifAbsent: do
	^ LQLocalObjectDummy on: (items at: key ifAbsent: do)