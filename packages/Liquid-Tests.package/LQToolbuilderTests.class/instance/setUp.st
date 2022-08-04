running
setUp
	
	| q1 q2 |
	
	super setUp.
	q1 := self createQ1.
	q2 := self createQ2.

	self createPollDraftWith: q1 and: q2.
	self poll: (LQPoll newWithPollDraft: (self pollDraft)).
	
	self poll id: 'this-is-a-poll-id'.
	self poll startWithId: 'this-is-a-poll-id' ifTaken: []

	