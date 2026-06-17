temporary
hasConditionForTarget: aTargetQuestionId

    ^ self conditions anySatisfy: [ :c | c targetQuestionId = aTargetQuestionId ]