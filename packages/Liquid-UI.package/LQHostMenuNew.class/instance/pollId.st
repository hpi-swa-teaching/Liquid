accessing
pollId
	
	((self currentPoll == 0) and: [self pollList size == 0])
	ifFalse: 
	[(LQRemotePollRepoServer pollRepo at: self currentPollID) isOpen
	ifFalse: [^'Poll closed!'].
	^ self currentPollID asString].
	^ 'No polls in your repo!'