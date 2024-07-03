accessing
pollIDString
	(self currentPoll = 0
			or: [self pollList isEmpty])
		ifFalse: [(LQRemotePollRepoServer pollRepo at: self currentPollID) isOpen
				ifFalse: [^ 'Poll closed!'].
			^ self currentPollID asString].
	self pollList size = 0
		ifTrue: [^ 'No Polls on your Server!'].
	^ 'No poll selected!'