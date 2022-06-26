tests
testRemoteObjectDummy404ResponseForEmptyPollId
	| response |
	response := self remoteObjectDummyResponseForPollId: 'some-random-pollid' withPassword: self user3 id andMessage: self id.
	self assert: 404 equals: response code