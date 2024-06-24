helper methods
createPoll
	
	| pollId |
	
	self poll: (LQPoll newWithPollDraft: LQPollDraft new).
	self poll pollDraft questionList add: (LQMultiChoiceQuestion new
		title: 'Where is the master ball';
		choiceList: {LQChoice newFrom: 'in Whiscashs throat [group1]'. LQChoice newFrom: 'in Kangamas bag [3]'};
		yourself).
	self poll userSetID: self userSet id.
	
	pollId := 'gotta-catch-rayquaza'.
	(LQRemotePollRepoServer pollRepo includesKey: pollId) 
		ifTrue: [LQRemotePollRepoServer pollRepo removeKey: pollId].
	self poll startWithId: pollId ifTaken: [self fail: 'Poll ID already taken']

