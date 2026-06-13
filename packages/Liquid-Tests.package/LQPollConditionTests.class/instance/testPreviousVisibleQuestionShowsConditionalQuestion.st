testing
testPreviousVisibleQuestionShowsConditionalQuestion

    | prevIndex |
    prevIndex := poll previousVisibleQuestionIndexBefore: 3 givenAnswers: answerSetYes.
    self assert: prevIndex equals: 2