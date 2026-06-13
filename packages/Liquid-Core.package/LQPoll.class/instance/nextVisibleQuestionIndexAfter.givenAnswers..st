accessing
nextVisibleQuestionIndexAfter: anIndex givenAnswers: anAnswerSet

    | list nextIndex |
    list := self questionList.
    nextIndex := anIndex + 1.
    [ nextIndex <= list size ] whileTrue: [
        (self isQuestionVisible: (list at: nextIndex) givenAnswers: anAnswerSet)
            ifTrue: [ ^ nextIndex ].
        nextIndex := nextIndex + 1 ].
    ^ nil