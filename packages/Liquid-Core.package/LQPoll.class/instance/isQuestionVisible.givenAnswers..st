testing
isQuestionVisible: aQuestion givenAnswers: anAnswerSet

    (self hasConditionForTarget: aQuestion id) ifFalse: [ ^ true ].
    ^ (self conditionsForTarget: aQuestion id)
        anySatisfy: [ :c | c isSatisfiedBy: anAnswerSet ]