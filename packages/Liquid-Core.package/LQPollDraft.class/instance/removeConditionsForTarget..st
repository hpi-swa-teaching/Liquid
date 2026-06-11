modifying
removeConditionsForTarget: aTargetQuestionId

    conditions := self conditions
        reject: [ :c | c targetQuestionId = aTargetQuestionId ]