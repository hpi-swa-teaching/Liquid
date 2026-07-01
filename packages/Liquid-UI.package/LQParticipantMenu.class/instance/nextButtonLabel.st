toolbuilder
nextButtonLabel

    | nextIndex |
    nextIndex := self poll
        nextVisibleQuestionIndexAfter: self currentQuestionIndex
        givenAnswers: self answerSet.
    nextIndex isNil ifTrue: [ ^ 'Send Answers' ].
    ^ 'Next'