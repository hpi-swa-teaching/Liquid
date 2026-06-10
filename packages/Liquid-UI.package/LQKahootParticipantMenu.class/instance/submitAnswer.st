modifying
submitAnswer

	| answerSet answer |
	self submitEnabled ifFalse: [^ self].
	
	answerSet := LQAnswerSet new.
	answerSet pollId: self quiz quizId.
	answerSet token: (self participantName ifNil: ['Anonymous']).
	
	answer := LQChoicesAnswer new.
	answer questionId: self currentQuestion id.
	answer choicesRanking: {self selectedChoiceIndex}.
	answerSet addAnswer: answer.
	
	LQPollRepo default addAnswerSet: answerSet ToPoll: self quiz quizId.
	self hasSubmitted: true.
	UIManager default inform: 'Answer submitted!'.
