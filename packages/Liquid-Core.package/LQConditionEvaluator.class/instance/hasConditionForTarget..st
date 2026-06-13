accessing
hasConditionForTarget: aTargetQuestionId

    conditions isNil ifTrue: [ ^ false ].
    ^ conditions anySatisfy: [ :c | c targetQuestionId = aTargetQuestionId ]