communication
nextQuestionOrSend

| nextIndex |
    self selectionPanel model isEveryChoiceRanked ifFalse: [
		UIManager default inform: 'rank left choices'.
		^ self
	].
    nextIndex := self poll
        nextVisibleQuestionIndexAfter: self currentQuestionIndex
        givenAnswers: self answerSet.
    nextIndex isNil ifTrue: [ ^ self sendAnswer ].
    self currentQuestionIndex >= self poll questionList size ifTrue: [^ self sendAnswer].
    self nextQuestion