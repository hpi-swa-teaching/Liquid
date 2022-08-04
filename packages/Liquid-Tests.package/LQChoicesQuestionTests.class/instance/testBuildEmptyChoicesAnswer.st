testing
testBuildEmptyChoicesAnswer

	self assert: (self question buildEmptyAnswer isKindOf: LQChoicesAnswer)