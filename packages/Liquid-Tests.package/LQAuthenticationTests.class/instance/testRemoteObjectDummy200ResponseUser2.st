tests
testRemoteObjectDummy200ResponseUser2
	| response |
	response := self remoteObjectDummyResponseForPollId: self poll id withPassword: self user2 pwd andMessage: self id.
	self assert: response isSuccess