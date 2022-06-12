as yet unclassified
requestPollWith: aPollID And: aUserID

	| requestedPoll |
	requestedPoll := self default at: aPollID ifAbsent: [].
	
	requestedPoll userSet 
		ifNotNil: [(requestedPoll userSet contains: aUserID) 
							ifTrue: [^ requestedPoll];
							ifFalse: [^ nil]].
		
	^ requestedPoll