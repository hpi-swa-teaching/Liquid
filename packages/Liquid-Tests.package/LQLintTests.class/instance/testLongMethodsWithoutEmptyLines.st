coding styles
testLongMethodsWithoutEmptyLines
	"Some tests may need more extensive setUp, which is why we excluded our tests from this test"

	self assertAllZero: (self lint: #longMethod: except: (LQTestCase allSubclasses add: LQTestCase; yourself))