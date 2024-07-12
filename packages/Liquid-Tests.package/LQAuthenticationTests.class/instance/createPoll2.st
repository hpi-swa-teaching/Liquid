helper methods
createPoll2

	| pollId |
	self poll2: (LQPoll newWithPollDraft: LQPollDraft new).
	self poll2 pollDraft questionList add: (LQMultiChoiceQuestion new
		title: 'Where is the master ball';
		choiceList: {LQChoice newFrom: 'in Whiscashs throat'. LQChoice newFrom: 'in Kangamas bag'};
		yourself).
	self poll2 userSetID: self userSet2 id.
	
	pollId := 'yet-another-poll-id'.
	(LQRemotePollRepoServer pollRepo includesKey: pollId) ifTrue: [LQRemotePollRepoServer pollRepo removeKey: pollId].
	self poll2 startWithId: pollId ifTaken: [self fail: 'Poll ID already taken']