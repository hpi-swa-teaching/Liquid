initialize
importPollWithId: aString

	| importedPoll |
	importedPoll := LQPollRepo default at: aString ifAbsent: [^ nil].
	self poll: importedPoll.
	self answerSet: LQAnswerSet new.
	self answerSet pollId: self poll id.
	self changed: #poll