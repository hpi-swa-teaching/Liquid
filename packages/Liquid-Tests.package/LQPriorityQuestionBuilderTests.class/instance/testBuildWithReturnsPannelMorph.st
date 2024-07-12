testing
testBuildWithReturnsPannelMorph

	self assert: ((self questionBuilder buildWith: self builder) isMemberOf: PluggablePanelMorph)