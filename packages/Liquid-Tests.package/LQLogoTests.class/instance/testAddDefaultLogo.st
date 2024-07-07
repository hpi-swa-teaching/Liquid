testing
testAddDefaultLogo
	self instance addDefaultLogo.
	self assert: self instance submorphs isEmptyOrNil not.
	self assert: self instance submorphs first class equals: Morph.
	self assert: self instance submorphs first submorphs isEmptyOrNil not.
	self assert: self instance submorphs first submorphs first class equals: ImageMorph