testing
testSetDefaultLogoMorph
	self instance setDefaultLogoMorph.
	self assert: self instance logoMorph isNil not.
	self assert: self instance logoMorph class equals: Morph