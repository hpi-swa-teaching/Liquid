tests
testRemoteObjectDummy401ResponseForEmptyPassword
	| response |
	response := self remoteObjectDummyResponseForPollId: self poll id withPassword: '' andMessage: self id.
	self assert: 401 equals: response code