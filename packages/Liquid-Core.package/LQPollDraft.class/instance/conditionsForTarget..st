accessing
conditionsForTarget: aTargetQuestionId

    ^ self conditions select: [ :c | c targetQuestionId = aTargetQuestionId ]