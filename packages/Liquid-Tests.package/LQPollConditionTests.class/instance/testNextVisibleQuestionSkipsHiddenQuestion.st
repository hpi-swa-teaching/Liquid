testing
testNextVisibleQuestionSkipsHiddenQuestion

    | nextIndex |
    nextIndex := poll nextVisibleQuestionIndexAfter: 1 givenAnswers: answerSetNo.
    self assert: nextIndex equals: 3