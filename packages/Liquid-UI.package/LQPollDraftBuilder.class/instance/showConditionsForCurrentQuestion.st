modifying
showConditionsForCurrentQuestion

    | currentQ conditions text |
    (self currentQuestion isNil or: [ self currentQuestion = 0 ]) ifTrue: [
        UIManager default inform: 'Please select a question first.'.
        ^ self ].
    currentQ := self pollDraft questionList at: self currentQuestion.
    conditions := self pollDraft conditionsForTarget: currentQ id.
    conditions isEmpty ifTrue: [
        UIManager default inform: '"' , currentQ title , '" has no conditions.'.
        ^ self ].
    text := '"' , currentQ title , '" is shown only when:' , String lf , String lf.
    conditions doWithIndex: [ :c :i |
        | triggerQuestion |
        triggerQuestion := self pollDraft questionList
            detect: [ :q | q id = c triggerQuestionId ]
            ifNone: [ nil ].
        text := text , i printString , '. "' ,
            (triggerQuestion ifNil: [ '?' ] ifNotNil: [ triggerQuestion title ]) ,
            '" = "' , c triggerChoiceDescription , '"' , String lf ].
    UIManager default inform: text