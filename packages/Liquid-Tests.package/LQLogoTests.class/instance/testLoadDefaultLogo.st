testing
testLoadDefaultLogo

	| logo |
	logo := self instance loadDefaultLogo.
	self assert: logo notNil.
	self assert: logo class equals: ColorForm