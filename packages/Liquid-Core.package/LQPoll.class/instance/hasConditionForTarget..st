testing
hasConditionForTarget: aTargetQuestionId

    self conditions isNil ifTrue: [ ^ false ].
    ^ self conditions anySatisfy: [ :c | c targetQuestionId = aTargetQuestionId ]