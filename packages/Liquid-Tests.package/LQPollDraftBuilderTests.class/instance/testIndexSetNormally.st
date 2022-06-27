testing
testIndexSetNormally

	self pollDraftBuilder setIndex: 123.
	self assert: self pollDraftBuilder getIndex equals: 123