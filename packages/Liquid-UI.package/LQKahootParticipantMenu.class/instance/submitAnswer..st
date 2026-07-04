modifying
submitAnswer: anInteger

	| answerSet answer |
	self hasSubmitted ifTrue: [^ self].
	
	answerSet := LQAnswerSet new.
	answerSet pollId: self quiz quizId.
	answerSet token: (self participantName ifNil: ['Anonymous']).
	
	answer := LQChoicesAnswer new.
	answer questionId: self currentQuestion id.
	answer choicesRanking: {anInteger}.
	answerSet addAnswer: answer.
	
	LQPollRepo default addAnswerSet: answerSet ToPoll: self quiz quizId.
	self hasSubmitted: true.
