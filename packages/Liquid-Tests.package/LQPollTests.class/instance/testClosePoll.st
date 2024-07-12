testing
testClosePoll

	self poll
		addAnswerSet: self as1;
		closeWithPassword: (LQPasswordManager default
			findPasswordFor: self poll id
			ifAbsent: [self fail: 'expected password to exist']);
		addAnswerSet: self as2.
	self assert: self poll isOpen equals: false.
	self assert: self poll answerSets size equals: 1