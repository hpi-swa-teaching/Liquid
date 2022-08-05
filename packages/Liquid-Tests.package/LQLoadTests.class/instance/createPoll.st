helper methods
createPoll

	| poll pollId |
	
	poll := LQPoll newWithPollDraft: LQPollDraft new.
	poll questionList add: (LQChoicesQuestion new
		title: 'Where is the master ball';
		choiceList: {LQChoice newFrom: 'in Whiscashs throat'. LQChoice newFrom: 'in Kangamas bag'};
		yourself).
	
	pollId := 'gotta-catch-rayquaza'.
	(LQRemotePollRepoServer pollRepo includesKey: pollId) 
		ifTrue: [LQRemotePollRepoServer pollRepo removeKey: pollId].
	poll startWithId: pollId ifTaken: [self fail: 'Poll ID already taken'].
	^ poll