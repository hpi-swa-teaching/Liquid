tests
testSendAnswer

	| poll q1 a1 participantMenu startMenu |
	poll := LQPoll newWithPollDraft: LQPollDraft new.
	q1 := self createQuestionOne.
	poll pollDraft questionList add: q1.
	a1 := self createAnswerOneWith: q1 and: poll.
	LQPollRepo default at: poll id ifPresent: [^ self fail] ifAbsentPut: poll.
	participantMenu := self createParticipantMenuwith: a1 and: poll.
	startMenu := participantMenu sendAnswer.
	self assert: ((LQPollRepo default at: poll id) answerSets includes: a1).
	self assert: (startMenu model isKindOf: LQStartMenu).
	startMenu model destroy.
	self assert: (LQParticipantMenu answeredPollIds includes: poll id)