testing
testBuildWithReturnsWindow

	self assert: ((self deadlineMenu buildWith: self builder) isMemberOf: PluggableSystemWindow)