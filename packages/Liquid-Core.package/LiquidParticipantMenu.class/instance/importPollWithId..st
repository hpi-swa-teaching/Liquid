initialize
importPollWithId: aString
|importedPoll|
	importedPoll := PollRepo default at: aString.
	importedPoll ifNil: [^ nil].
	self poll: importedPoll.
	self pollAnswer: LiquidPollAnswer new.
	self pollAnswer pollId: self poll id.
	self changed: #poll.
	self changed: #questionList.