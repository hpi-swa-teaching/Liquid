misc
testNoRedundantClassNameInSelector

	self assertAllZero: (self lint: #classNameInSelector:)