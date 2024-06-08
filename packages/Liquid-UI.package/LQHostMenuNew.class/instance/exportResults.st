modifying
exportResults

self currentPoll == 0 ifFalse: [
(LQRemotePollRepoServer pollRepo at: self currentPollID
		ifAbsent:
		[^ 'This poll does not exist.']) 
		exportCSV
		]