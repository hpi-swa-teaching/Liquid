accessing
currentQuestionIndex: anObject

    currentQuestionIndex := anObject.
    self newAnswerPanel.
    self currentAnswerPanel model question: self currentQuestion.
    self selectionPanel model exclusionMarker: self newExclusionMarker.
    self answerSet addAnswer: self currentAnswerPanel model answer.
    self changed: #previousButtonEnabled.
    self changed: #nextButtonLabel.
    self changed: #questionCounterText