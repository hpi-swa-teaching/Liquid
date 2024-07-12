testing
testLoadLogoWithInvalidName

	| logo |
	self should: [logo := self instance loadLogo: 'INVALID'] raise: FileDoesNotExist
	"self assert: logo isNil"