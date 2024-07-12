testing
testCreateLogoMorphWithValidImage
	| image logoMorph |
	image := Form squeakLogo.
	logoMorph := self instance createLogoMorph: image.
	self assert: logoMorph class equals: Morph.
	self assert: logoMorph submorphs notEmpty.
	self assert: logoMorph extent equals: image extent