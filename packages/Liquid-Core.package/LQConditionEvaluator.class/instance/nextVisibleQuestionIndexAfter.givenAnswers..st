accessing
nextVisibleQuestionIndexAfter: anIndex givenAnswers: anAnswerSet

    anIndex + 1 to: questionList size do: [ :i |
        (self isQuestionVisible: (questionList at: i) givenAnswers: anAnswerSet)
            ifTrue: [ ^ i ] ].
    ^ nil