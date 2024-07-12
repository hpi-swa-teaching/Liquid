testing
testLoadLogoWithValidName

	| logo |
	logo := self instance loadLogo: 'liquid_logo.png'.
	self assert: logo notNil.
	self assert: logo class equals: ColorForm