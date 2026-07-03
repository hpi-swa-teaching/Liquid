toolbuilder
previousButtonEnabled

    | prevIndex |
    self currentQuestionIndex = 1 ifTrue: [ ^ false ].
    prevIndex := self poll
        previousVisibleQuestionIndexBefore: self currentQuestionIndex
        givenAnswers: self answerSet.
    ^ prevIndex < self currentQuestionIndex