testing
testCreateLogoMorphWithoutImage
	| image logoMorph |
	image := nil.
	logoMorph := self instance createLogoMorph: image.
	self assert: logoMorph class equals: Morph.
	self assert: logoMorph submorphs isEmpty.
	self assert: logoMorph extent equals: self instance minimumLogoSize