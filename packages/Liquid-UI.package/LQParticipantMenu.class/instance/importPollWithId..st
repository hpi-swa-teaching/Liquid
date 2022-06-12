communication
importPollWithId: aString

	| pollID userID |

	(self isCombinedID: aString) 
		ifTrue: [pollID := aString splitBy: '@' second.
					userID := aString splitBy: '@' first.
					self poll: (LQPollRepo requestPollWith: pollID And: userID)];
		ifFalse: [self poll: (LQPollRepo requestPollWith: aString)].

	"self poll: (LQPollRepo default at: aString ifAbsent: [^ nil])."
	self answerSet: LQAnswerSet new.
	self answerSet pollId: self poll id.
	self changed: #poll