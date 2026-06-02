modifying
registerParticipant

	| name |
	registered ifTrue: [^ self].
	registered := true.
	name := (participantName isNil or: [participantName isEmpty])
		ifTrue: ['Anonymous']
		ifFalse: [participantName].
	LQPollRepo default addAnswerSet: name ToPoll: quiz quizId
