testing
testConditionalQuestionVisibleWhenConditionMet

    self assert: (evaluator isQuestionVisible: q2 givenAnswers: (self answerSetWith: q1a1))