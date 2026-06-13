testing
testQuestionWithoutConditionIsAlwaysVisible

    self assert: (poll isQuestionVisible: q1 givenAnswers: answerSetEmpty).
    self assert: (poll isQuestionVisible: q3 givenAnswers: answerSetEmpty)