accessing
baseMorph

	| baseMorph |
	baseMorph := Morph new.
	baseMorph
		extent: self minimumLogoSize;
		color: Color transparent;
		borderWidth: 0.
	^ baseMorph