testing
isQuestionVisible: aQuestion givenAnswers: anAnswerSet

    (self hasConditionForTarget: aQuestion id) ifFalse: [ ^ true ].
    ^ (self conditionsForTarget: aQuestion id)
        allSatisfy: [ :c | c isSatisfiedBy: anAnswerSet ]