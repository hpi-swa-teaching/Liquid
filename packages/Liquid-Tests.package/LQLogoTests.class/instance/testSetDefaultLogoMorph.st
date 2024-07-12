testing
testSetDefaultLogoMorph
	self instance setDefaultLogoMorph.
	self assert: self instance logoMorph notNil.
	self assert: self instance logoMorph class equals: Morph