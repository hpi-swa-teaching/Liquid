testing
testPreviousVisibleQuestionSkipsHiddenQuestion

    | prevIndex |
    prevIndex := evaluator previousVisibleQuestionIndexBefore: 3 givenAnswers: (self answerSetWith: q1a2).
    self assert: prevIndex equals: 1