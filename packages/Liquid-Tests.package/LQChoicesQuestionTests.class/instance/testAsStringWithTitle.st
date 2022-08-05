testing
testAsStringWithTitle

	self question title: 'Meine Frage ist toll'.
	self assert: self question asString equals: 'Meine Frage ist toll'