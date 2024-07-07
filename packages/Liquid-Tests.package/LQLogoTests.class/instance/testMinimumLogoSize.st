testing
testMinimumLogoSize
	| minimumLogoSize |
	minimumLogoSize := self instance minimumLogoSize.
	self assert: minimumLogoSize isNil not.
	self assert: minimumLogoSize class equals: Point.
