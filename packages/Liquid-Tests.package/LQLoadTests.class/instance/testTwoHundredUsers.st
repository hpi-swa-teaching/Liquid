testing
testTwoHundredUsers
	<timeout: 40>

	| poll hostPoll target |
	poll := self createPoll.
	target := 200.
	self let: target ParticipantsInteractWithPollId: poll id.
	poll closeWithPassword: (LQPasswordManager default
		findPasswordFor: poll id
		ifAbsent: [self fail: 'expected pw to be present']).	
	hostPoll := LQRemotePollRepoServer pollRepo at: poll id.
	self assert: target equals: hostPoll answerSets size