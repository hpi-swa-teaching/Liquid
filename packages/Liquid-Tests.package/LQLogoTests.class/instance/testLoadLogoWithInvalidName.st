testing
testLoadLogoWithInvalidName

	| logo |
	self should: [logo := self instance loadLogo: 'INVALID'] raise: FileDoesNotExistException
	"self assert: logo isNil"