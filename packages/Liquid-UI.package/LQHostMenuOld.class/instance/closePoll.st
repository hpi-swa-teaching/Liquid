modifying
closePoll

	| pollId password |
	
	pollId := UIManager default request: 'Enter Poll ID'.
	password := LQPasswordManager default
		findPasswordFor: pollId
		ifAbsent: [^ UIManager default inform: 'You don''t have access to this poll.'].
	(LQRemotePollRepoServer pollRepo at: pollId
		ifAbsent: [^ UIManager default inform: 'This poll does not exist.']) closeWithPassword: password