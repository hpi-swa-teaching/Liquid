testing
testBuildWithReturnsWindowMorph

	self assert: ((self pollDraftBuilder buildWith: self builder) isMemberOf: PluggableSystemWindow)