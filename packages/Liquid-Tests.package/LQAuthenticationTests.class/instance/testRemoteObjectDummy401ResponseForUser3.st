tests
testRemoteObjectDummy401ResponseForUser3
	| response |
	response := self remoteObjectDummyResponseForPollId: self poll id withPassword: self user3 pwd andMessage: self id.
	self assert: 401 equals: response code