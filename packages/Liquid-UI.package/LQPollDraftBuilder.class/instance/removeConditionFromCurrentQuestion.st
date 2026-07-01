modifying
removeConditionFromCurrentQuestion

    | currentQ conditions |
    (self currentQuestion isNil or: [ self currentQuestion = 0 ]) ifTrue: [
        UIManager default inform: 'Please select a question first.'.
        ^ self ].
    currentQ := self pollDraft questionList at: self currentQuestion.
    conditions := self pollDraft conditionsForTarget: currentQ id.
    conditions isEmpty ifTrue: [
        UIManager default inform: 'The selected question has no condition to remove.'.
        ^ self ].
    self removeConditionByIndexFor: currentQ conditions: conditions