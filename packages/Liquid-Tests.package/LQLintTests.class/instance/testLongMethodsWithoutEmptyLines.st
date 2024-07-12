coding styles
testLongMethodsWithoutEmptyLines

	self assertAllZero: (self lint: #longMethod: except: (LQTestCase allSubclasses
		add: LQTestCase;
		yourself))