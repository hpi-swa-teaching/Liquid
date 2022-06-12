as yet unclassified
testGetUserSetFromPoll

	| pollId |
	pollId := self poll id.
	LQPollRepo default at: pollId ifPresent: [Transcript show: 'ahhh'] ifAbsentPut: poll.
	self assert: (LQPollRepo at: pollId) equals: poll.