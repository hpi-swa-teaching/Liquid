testing
testNextVisibleQuestionReturnsNilAtEnd

    | nextIndex |
    nextIndex := evaluator nextVisibleQuestionIndexAfter: 3 givenAnswers: (self answerSetWith: q1a2).
    self assert: nextIndex isNil