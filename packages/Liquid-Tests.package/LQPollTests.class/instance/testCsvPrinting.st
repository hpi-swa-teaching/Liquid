testing
testCsvPrinting

	| view |
	
	self poll 
		addAnswerSet: self as1;
		addAnswerSet: self as2.
	
	view := LQResultsView newWithPoll: self poll.
	
	"Transcript show: view getResults."
	
	self assert: view getResults equals: 'Question 1;Question 2;
Q1A1,Q1A2;Q1A2;
Q1A1;Q2A1;
'