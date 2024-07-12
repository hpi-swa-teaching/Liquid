testing
testIndexSetNormally

	| index |
	index := 123.
	self pollDraftBuilder setIndex: index.
	self assert: self pollDraftBuilder getIndex equals: index