toolbuilder
questionCounterText

    | visibleTotal visibleCurrent |
    visibleTotal := self poll questionList inject: 0 into: [ :count :q |
        (self poll isQuestionVisible: q givenAnswers: self answerSet)
            ifTrue: [ count + 1 ]
            ifFalse: [ count ] ].
    visibleCurrent := (self poll questionList copyFrom: 1 to: self currentQuestionIndex)
        inject: 0 into: [ :count :q |
            (self poll isQuestionVisible: q givenAnswers: self answerSet)
                ifTrue: [ count + 1 ]
                ifFalse: [ count ] ].
    ^ 'Question: ' , visibleCurrent printString , ' / ' , visibleTotal printString