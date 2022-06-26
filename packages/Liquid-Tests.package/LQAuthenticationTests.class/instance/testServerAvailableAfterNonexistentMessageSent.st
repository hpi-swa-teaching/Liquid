tests
testServerAvailableAfterNonexistentMessageSent
	| response |
	response := self remoteObjectDummyResponseForPollId: self poll id withPassword: self user1 id andMessage: self thisMessageDoesNotExist.
	self assert: 400 equals: response code.
	response := self remoteObjectDummyResponseForPollId: self poll id withPassword: self user1 id andMessage: self id.
	self assert: 200 equals: response code