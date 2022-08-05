testing
testClosePoll

	poll addAnswerSet: as1; 
	  closeWithPassword: (LQPasswordManager default 
	   findPasswordFor: poll id 
	   ifAbsent: [self fail: 'expected password to exist']); 
	  addAnswerSet: as2.

	LQResultsView newWithPoll: poll.
	self assert: poll isOpen equals: false.
	self assert: poll answerSets size equals: 1