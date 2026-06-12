modifying
removeConditionFromCurrentQuestion

    | currentQ |
    (self currentQuestion isNil or: [ self currentQuestion = 0 ]) ifTrue: [
        UIManager default inform: 'Please select a question first.'.
        ^ self ].
    currentQ := self pollDraft questionList at: self currentQuestion.
    (self pollDraft hasConditionForTarget: currentQ id) ifFalse: [
        UIManager default inform: 'The selected question has no condition to remove.'.
        ^ self ].
    self pollDraft removeConditionsForTarget: currentQ id.
    UIManager default inform: 'All conditions removed from "' , currentQ title , '"'.
    self changed: #list