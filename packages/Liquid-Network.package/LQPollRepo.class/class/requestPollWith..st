as yet unclassified
requestPollWith: aPollID
	
	| requestedPoll |
	requestedPoll := self default at: aPollID ifAbsent: [].
	
	requestedPoll userSet 
		ifNil: [^ requestedPoll];
		ifNotNil: [^ nil]
	