testing
testMinimumLogoSize

	| minimumLogoSize |
	minimumLogoSize := self instance minimumLogoSize.
	self assert: minimumLogoSize notNil.
	self assert: minimumLogoSize class equals: Point