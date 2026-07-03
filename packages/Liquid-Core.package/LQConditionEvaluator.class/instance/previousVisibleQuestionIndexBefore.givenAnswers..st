accessing
previousVisibleQuestionIndexBefore: anIndex givenAnswers: anAnswerSet

    anIndex - 1 to: 1 by: -1 do: [ :i |
        (self isQuestionVisible: (questionList at: i) givenAnswers: anAnswerSet)
            ifTrue: [ ^ i ] ].
    ^ 1