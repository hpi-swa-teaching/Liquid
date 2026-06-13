communication
nextQuestionOrSend

    | nextIndex |
    self selectionPanel model isEveryChoiceRanked ifFalse: [ ^ self ].
    nextIndex := self poll
        nextVisibleQuestionIndexAfter: self currentQuestionIndex
        givenAnswers: self answerSet.
    nextIndex isNil ifTrue: [ ^ self sendAnswer ].
    self nextQuestion