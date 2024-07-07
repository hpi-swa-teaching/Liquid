testing
testLoadLogoWithValidName
	| logo |
	logo := self instance loadLogo: 'liquid_logo.png'.
	self assert: logo isNil not.
	self assert: logo class equals: ColorForm