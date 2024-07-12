testing
testPollRepo404ResponseForEmptyPollId

	LQPollRepo default token: self user1 token.
	self
		assert: LQRemotePollRepoServer unavailableResponseCode
		equals: (LQPollRepo default serverAt: '') code