tests
testRemoteObjectDummy404ResponseForInvalidPollId
	| response |
	response := self remoteObjectDummyResponseForPollId: -1 withPassword: self user1 pwd andMessage: self id.
	self assert: 404 equals: response code