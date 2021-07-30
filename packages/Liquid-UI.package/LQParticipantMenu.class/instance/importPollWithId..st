initialize
importPollWithId: aString

	self poll: (LQPollRepo default at: aString ifAbsent: [^ nil]).
	self answerSet: LQAnswerSet new.
	self answerSet pollId: self poll id.
	self changed: #poll