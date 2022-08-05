testing
testCsvPrinting

	| view |
	
	poll 
		addAnswerSet: as1;
		addAnswerSet: as2.
	
	view := LQResultsView newWithPoll: poll.
	
	"Transcript show: view getResults."
	
	self assert: view getResults equals: 'Question 1;Question 2;
Q1A1,Q1A2;Q1A2;
Q1A1;Q2A1;
'