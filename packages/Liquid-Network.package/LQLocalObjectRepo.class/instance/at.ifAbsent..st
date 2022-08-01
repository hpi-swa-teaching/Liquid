accessing
at: key ifAbsent: do

	^ LQLocalObjectDummy on: (self items at: key ifAbsent: do)