initialize-release
setUp

	| q1 q2 |
	
	q1 := LQChoicesQuestion new.
	q1 title: 'Question 1'.
	q1 addChoice: (LQChoice newFrom: 'Option 1 [UserGroup1]').
	q1 addChoice: (LQChoice newFrom: 'Option 2').

	q2 := LQChoicesQuestion new.
	q2 title: 'Question 2'.
	q2 addChoice: (LQChoice newFrom: 'Option 1 [UserGroup1]').
	q2 addChoice: (LQChoice newFrom: 'Option 2').

	self pollDraft: (LQPollDraft new).
	self pollDraft title: 'this is a title'.
	self pollDraft addQuestion: q1.
	self pollDraft addQuestion: q2.
	
	self poll: (LQPoll newWithPollDraft: (self pollDraft)).
	
	self poll id: 'this-is-a-poll-id'.
	self poll startWithId: 'this-is-a-poll-id' ifTaken: [].

	