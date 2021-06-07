initialize
importPollWithId: aString
|importedPoll|
	importedPoll := PollRepo default at: aString.
	importedPoll ifNil: [^ nil].
	self poll: importedPoll.
	self answerSet: LiquidAnswerSet new.
	self answerSet pollId: self poll id.
	self changed: #poll.