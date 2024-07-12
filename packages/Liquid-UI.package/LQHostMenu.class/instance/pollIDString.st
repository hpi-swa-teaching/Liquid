accessing
pollIDString

	(self currentPoll isZero or: [self pollList isEmpty]) ifFalse: [
		(LQRemotePollRepoServer pollRepo at: self currentPollID) isOpen ifFalse: [^ 'Poll closed!'].
		^ self currentPollID asString].
	self pollList ifEmpty: [^ 'No Polls on your Server!'].
	^ 'No poll selected!'