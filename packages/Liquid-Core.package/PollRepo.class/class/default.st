accessing
default
	default ifNil: [
		self default: LocalObjectRepo new.
	].
	^ default