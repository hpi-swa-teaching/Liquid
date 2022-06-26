tests
testRemoteObjectDummy404ResponseForInvalidPollId
	| response |
	response := self remoteObjectDummyResponseForPollId: -1 withPassword: self user1 id andMessage: self id.
	self assert: 404 equals: response code