testing
testNextVisibleQuestionReturnsNilAtEnd

    | nextIndex |
    nextIndex := poll nextVisibleQuestionIndexAfter: 3 givenAnswers: answerSetNo.
    self assert: nextIndex isNil