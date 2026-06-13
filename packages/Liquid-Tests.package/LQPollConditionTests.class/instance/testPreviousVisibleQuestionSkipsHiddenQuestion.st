testing
testPreviousVisibleQuestionSkipsHiddenQuestion

    | prevIndex |
    prevIndex := poll previousVisibleQuestionIndexBefore: 3 givenAnswers: answerSetNo.
    self assert: prevIndex equals: 1