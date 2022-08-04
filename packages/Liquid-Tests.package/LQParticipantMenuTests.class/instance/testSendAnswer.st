testing
testSendAnswer

	| temporaryPoll question1 answer1 participantMenu startMenu |
	
	temporaryPoll := LQPoll newWithPollDraft: LQPollDraft new.
	question1 := self createQuestionOne.
	temporaryPoll pollDraft questionList add: question1.
	answer1 := self createAnswerOneWith: question1 and: temporaryPoll.
	LQPollRepo default at: temporaryPoll id ifPresent: [^ self fail] ifAbsentPut: temporaryPoll.
	participantMenu := self createParticipantMenuwith: answer1 and: temporaryPoll.
	startMenu := participantMenu sendAnswer.
	self assert: ((LQPollRepo default at: temporaryPoll id) answerSets includes: answer1).
	self assert: (startMenu model isKindOf: LQStartMenu).
	startMenu model destroy.
	self assert: (LQParticipantMenu answeredPollIds includes: temporaryPoll id)