accessing
default

	default ifNil: [self default: LQLocalObjectRepo new].
	^ default