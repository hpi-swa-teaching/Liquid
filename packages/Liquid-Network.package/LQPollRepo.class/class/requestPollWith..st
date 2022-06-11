as yet unclassified
requestPollWith: aPollID
	
	| requestedPoll |
	requestedPoll := self default at: aPollID ifAbsent: [].
	
	requestedPoll userSetID
		ifNil: [^ requestedPoll];
		ifNotNil: [^ nil]
	