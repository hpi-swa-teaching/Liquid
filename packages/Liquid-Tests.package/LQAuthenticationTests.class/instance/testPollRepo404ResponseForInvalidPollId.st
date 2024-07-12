testing
testPollRepo404ResponseForInvalidPollId

	| invalidPollId |
	invalidPollId := -100.
	LQPollRepo default token: self user1 token.
	self
		assert: LQRemotePollRepoServer unavailableResponseCode
		equals: (LQPollRepo default serverAt: invalidPollId) code