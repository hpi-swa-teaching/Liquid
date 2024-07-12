testing
testPollRepo401ResponseForUser3

	LQPollRepo default token: self user3 token.
	self
		assert: LQRemotePollRepoServer unauthorizedResponseCode
		equals: (LQPollRepo default serverAt: self poll id) code