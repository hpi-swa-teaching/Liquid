testing
testNextVisibleQuestionSkipsHiddenQuestion

    | nextIndex |
    nextIndex := evaluator nextVisibleQuestionIndexAfter: 1 givenAnswers: (self answerSetWith: q1a2).
    self assert: nextIndex equals: 3