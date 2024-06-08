accessing
pollId
	
	((self currentPoll == 0) and: [self pollList size == 0])
	ifFalse: 
	[^ self currentPollID asString].
	 ^ 'No poll selected!'