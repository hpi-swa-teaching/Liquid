communication
previousQuestion

    | prevIndex |
    self currentQuestionIndex = 1 ifTrue: [ ^ self ].
    prevIndex := self poll
        previousVisibleQuestionIndexBefore: self currentQuestionIndex
        givenAnswers: self answerSet.
    self currentQuestionIndex: prevIndex