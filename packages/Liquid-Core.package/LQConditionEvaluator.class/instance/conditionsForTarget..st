testing
conditionsForTarget: aTargetQuestionId

    ^ conditions select: [ :c | c targetQuestionId = aTargetQuestionId ]