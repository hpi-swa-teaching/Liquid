testing
testPollRepo401ResponseForEmptyToken

	LQPollRepo default token: ''.
	self assert: LQRemotePollRepoServer unauthorizedResponseCode 
						equals: ((LQPollRepo default serverAt: self poll id) code)