initialize
importPollWithId: aString
|importedPoll|
	importedPoll := PollRepo default at: aString ifAbsent: [^ nil ].
	self poll: importedPoll.
	self pollAnswer: LiquidAnswerSet new.
	self pollAnswer pollId: self poll id.
	self changed: #poll.
	self changed: #questionList.