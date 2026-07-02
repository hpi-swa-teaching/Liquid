testing
testNextVisibleQuestionShowsConditionalQuestion

    | nextIndex |
    nextIndex := evaluator nextVisibleQuestionIndexAfter: 1 givenAnswers: (self answerSetWith: q1a1).
    self assert: nextIndex equals: 2