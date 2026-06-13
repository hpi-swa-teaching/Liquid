testing
testPreviousVisibleQuestionShowsConditionalQuestion

    | prevIndex |
    prevIndex := evaluator previousVisibleQuestionIndexBefore: 3 givenAnswers: (self answerSetWith: q1a1).
    self assert: prevIndex equals: 2