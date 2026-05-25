accessing
currentQuestionIndex: anObject

    | marker |
    currentQuestionIndex := anObject.
    self newAnswerPanel.
    self currentAnswerPanel model question: self currentQuestion.
    marker := LQExclusionMarker
        newFrom: self currentQuestion choiceList
        and: (LQPollRepo default groupAt: self poll id).
    marker fullName: (LQPollRepo default fullNameAt: self poll id).
    marker question: self currentQuestion.
    self selectionPanel model exclusionMarker: marker.
    self answerSet addAnswer: self currentAnswerPanel model answer.
    self changed: #previousButtonEnabled.
    self changed: #nextButtonLabel.
    self changed: #questionCounterText