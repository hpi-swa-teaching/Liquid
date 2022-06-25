tests
testRemoteObjectDummy200ResponseUser1
	| response |
	response := self remoteObjectDummyResponseForPollId: self poll id withPassword: self user1 id andMessage: self id.
	self assert: response isSuccess