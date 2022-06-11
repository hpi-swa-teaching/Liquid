as yet unclassified
setUp

	| q1 q2 |
	self poll: (LQPoll newWithPollDraft: LQPollDraft new).
	q1 := LQChoicesQuestion new
		title: 'Question 1';
		choiceList: {'Q1A1'. 'Q1A2'};
		yourself.
	q2 := LQChoicesQuestion new
		title: 'Q2';
		choiceList: {'Q2A1'. 'Q2A2'. 'Q2A3'};
		maxNumberOfChoices: 2;
		yourself.
	self poll pollDraft questionList
		add: q1;
		add: q2.
	LQPollRepo default at: (self poll id) ifPresent: [Transcript show: 'ahhh'] ifAbsentPut: self poll.