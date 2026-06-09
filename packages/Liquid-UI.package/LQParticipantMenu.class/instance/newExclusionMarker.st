accessing
newExclusionMarker

    | marker |
    marker := LQExclusionMarker
        newFrom: self currentQuestion choiceList
        and: (LQPollRepo default groupAt: self poll id).
    marker fullName: (LQPollRepo default fullNameAt: self poll id).
    marker question: self currentQuestion.
    ^ marker