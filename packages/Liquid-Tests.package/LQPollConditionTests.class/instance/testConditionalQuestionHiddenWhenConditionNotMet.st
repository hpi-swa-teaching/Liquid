testing
testConditionalQuestionHiddenWhenConditionNotMet

    self deny: (evaluator isQuestionVisible: q2 givenAnswers: (self answerSetWith: q1a2))