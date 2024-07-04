accessing
createLogoMorph: anImageMorphOrNil 
	| baseMorph imageMorph |
	baseMorph := self baseMorph.
	anImageMorphOrNil isNil
		ifTrue: [^ baseMorph].
	imageMorph := ImageMorph new image: anImageMorphOrNil.
	baseMorph extent: (imageMorph extent x max: self minimumLogoSize x)
			@ (imageMorph extent y max: self minimumLogoSize y).
	baseMorph addMorph: imageMorph.
	^ baseMorph