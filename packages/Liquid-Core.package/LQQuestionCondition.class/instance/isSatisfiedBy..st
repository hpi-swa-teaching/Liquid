temporary
isSatisfiedBy: anAnswerSet
"The method is temporarily here and will be used in the subsequent logic"
    | triggerAnswer |
    triggerAnswer := anAnswerSet answers at: triggerQuestionId ifAbsent: [ ^ false ].
    ^ triggerAnswer containsVoteForChoice: triggerChoiceDescription