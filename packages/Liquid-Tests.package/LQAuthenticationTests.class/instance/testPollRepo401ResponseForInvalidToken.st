testing
testPollRepo401ResponseForInvalidToken

	| invalidToken |
	invalidToken := -100.
	LQPollRepo default token: invalidToken.
	self assert: LQRemotePollRepoServer unauthorizedResponseCode equals: 
						((LQPollRepo default serverAt: self poll id) code)
