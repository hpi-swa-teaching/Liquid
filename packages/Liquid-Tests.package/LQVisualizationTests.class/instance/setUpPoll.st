helper methods
setUpPoll

	self createAnswers.
	self buildAnswers.
	self pollDraft: LQPollDraft new.
	self poll: (LQPoll newWithPollDraft: (self pollDraft)).
	
	self pollDraft addQuestion: (self q1).
	self pollDraft addQuestion: (self q2).