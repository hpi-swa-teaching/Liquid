tests
testRemoteObjectDummy404ResponseForEmptyPollId
	| response |
	response := self remoteObjectDummyResponseForPollId: 'some-random-pollid' withPassword: self user3 pwd andMessage: self id.
	self assert: 404 equals: response code