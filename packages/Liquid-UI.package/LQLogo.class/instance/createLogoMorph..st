accessing
createLogoMorph: anImageOrNil 
	| baseMorph imageMorph |
	baseMorph := self baseMorph.
	anImageOrNil isNil
		ifTrue: [^ baseMorph].
	imageMorph := ImageMorph new image: anImageOrNil.
	baseMorph extent: (imageMorph extent x max: self minimumLogoSize x)
			@ (imageMorph extent y max: self minimumLogoSize y).
	baseMorph addMorph: imageMorph.
	^ baseMorph