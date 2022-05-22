setup
setUp
	| question1 |
	
	super setUp.
	
	self poll: (LQPoll newWithPollDraft: LQPollDraft new).
	self poll id: 'test-id'.
	
	question1 := LQChoicesQuestion new
		title: 'Question 1';
		choiceList: {'Q1A1'. 'Q1A2'};
		yourself.
	
	self poll pollDraft questionList add: question1.