testing
testQuestionWithoutConditionIsAlwaysVisible

    self assert: (evaluator isQuestionVisible: q1 givenAnswers: self emptyAnswerSet).
    self assert: (evaluator isQuestionVisible: q3 givenAnswers: self emptyAnswerSet)