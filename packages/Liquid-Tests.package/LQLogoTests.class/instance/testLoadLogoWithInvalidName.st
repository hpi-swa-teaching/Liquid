testing
testLoadLogoWithInvalidName
	| logo |
	logo := self instance loadLogo: 'INVALID'.
	self assert: logo isNil