temporary
isSatisfiedBy: anAnswerSet

    | ranking |
    ranking := (anAnswerSet answers at: triggerQuestionId ifAbsent: [ ^ false ]) choicesRanking.
    ranking isNil ifTrue: [ ^ false ].
    ^ ranking includes: triggerChoiceDescription