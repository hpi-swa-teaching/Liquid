running
setUp
	super setUp.
	hostMenu := LQHostMenu new.
	poll := LQPoll new.
	poll id: 'test-poll'.
	
	LQRemotePollRepoServer pollRepo items at: 'test-poll' put: poll.
	
	hostMenu currentPoll: 1