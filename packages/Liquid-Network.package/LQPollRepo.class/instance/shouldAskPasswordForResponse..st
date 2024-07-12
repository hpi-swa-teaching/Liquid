communication
shouldAskPasswordForResponse: aWebResponse

	^ aWebResponse code = LQRemotePollRepoServer unauthorizedResponseCode and: [self token isNil]