testing
testLoadDefaultLogo
	| logo |
	logo := self instance loadDefaultLogo.
	self assert: logo isNil not.
	self assert: logo class equals: ColorForm