testing
testNextVisibleQuestionShowsConditionalQuestion

    | nextIndex |
    nextIndex := poll nextVisibleQuestionIndexAfter: 1 givenAnswers: answerSetYes.
    self assert: nextIndex equals: 2