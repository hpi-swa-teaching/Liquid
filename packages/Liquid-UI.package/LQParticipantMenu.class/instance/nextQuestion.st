modifying
nextQuestion

    | nextIndex |
    nextIndex := self poll
        nextVisibleQuestionIndexAfter: self currentQuestionIndex
        givenAnswers: self answerSet.
    nextIndex isNil ifTrue: [ ^ self ].
    self currentQuestionIndex: nextIndex