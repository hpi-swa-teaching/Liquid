accessing
previousVisibleQuestionIndexBefore: anIndex givenAnswers: anAnswerSet

    | list prevIndex |
    list := self questionList.
    prevIndex := anIndex - 1.
    [ prevIndex >= 1 ] whileTrue: [
        (self isQuestionVisible: (list at: prevIndex) givenAnswers: anAnswerSet)
            ifTrue: [ ^ prevIndex ].
        prevIndex := prevIndex - 1 ].
    ^ 1