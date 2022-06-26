tests
testRemoteObjectDummy404ResponseForInvalidPollIdandInvalidPassword
	| response |
	response := self remoteObjectDummyResponseForPollId: -1 withPassword: -100 andMessage: self id.
	self assert: 404 equals: response code