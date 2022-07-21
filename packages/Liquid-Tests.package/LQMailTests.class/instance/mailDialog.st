accessing
mailDialog

	^ mailDialog ifNil: [^mailDialog := LQMailDialog new]