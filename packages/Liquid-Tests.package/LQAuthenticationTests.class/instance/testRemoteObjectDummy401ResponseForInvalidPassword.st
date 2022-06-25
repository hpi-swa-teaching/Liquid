tests
testRemoteObjectDummy401ResponseForInvalidPassword
	| response |
	response := self remoteObjectDummyResponseForPollId: self poll id withPassword: -100 andMessage: self id.
	self assert: 401 equals: response code