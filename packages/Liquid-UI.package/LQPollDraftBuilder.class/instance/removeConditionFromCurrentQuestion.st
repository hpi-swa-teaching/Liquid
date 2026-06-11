modifying
removeConditionFromCurrentQuestion

    | currentQ |
    (self currentQuestion isNil or: [ self currentQuestion isZero ]) ifTrue: [
        UIManager default inform: 'Please select a question first.'.
        ^ self ].
    currentQ := self pollDraft questionList at: self currentQuestion.
    (self pollDraft hasConditionForTarget: currentQ id) ifFalse: [
        UIManager default inform: 'The selected question has no condition to remove.'.
        ^ self ].
    UIManager default inform: 'Condition removed from "' , currentQ title , '"'.
    self changed: #list