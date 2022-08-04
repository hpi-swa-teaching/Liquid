helper methods
setUpPoll

	self q1a1: (LQChoice newFrom: 'Answer1 of Question 1').
	self q1a2: (LQChoice newFrom: 'Answer2 of Question 1').
	self q2a1: (LQChoice newFrom: 'Answer1 of Question 2').
	self q2a2: (LQChoice newFrom: 'Answer2 of Question 2').
	
	self q1: LQChoicesQuestion new.
	self q1 addChoice: (self q1a1).
	self q1 addChoice: (self q1a2).

	self q2: LQChoicesQuestion new.
	self q2 addChoice: (self q2a1).
	self q2 addChoice: (self q2a2).
	
	self pollDraft: LQPollDraft new.
	self poll: (LQPoll newWithPollDraft: (self pollDraft)).
	
	self pollDraft addQuestion: (self q1).
	self pollDraft addQuestion: (self q2).	
	
	