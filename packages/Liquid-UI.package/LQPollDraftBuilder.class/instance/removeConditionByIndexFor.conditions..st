modifying
removeConditionByIndexFor: aQuestion conditions: aConditionList

    | text input index |
    text := 'Conditions for "' , aQuestion title , '":' , String lf , String lf.
    aConditionList doWithIndex: [ :c :i |
        | triggerQuestion |
        triggerQuestion := self pollDraft questionList
            detect: [ :q | q id = c triggerQuestionId ]
            ifNone: [ nil ].
        text := text , i printString , '. "' ,
            (triggerQuestion ifNil: [ '?' ] ifNotNil: [ triggerQuestion title ]) ,
            '" = "' , c triggerChoiceDescription , '"' , String lf ].
    input := UIManager default
        request: text , String lf , 'Enter number to delete (or leave empty to cancel):'
        initialAnswer: ''.
    (input isNil or: [ input isEmpty ]) ifTrue: [ ^ self ].
    index := input asInteger.
    (index isNil or: [ index < 1 or: [ index > aConditionList size ] ]) ifTrue: [
        UIManager default inform: 'Invalid number.'.
        ^ self ].
    self pollDraft removeCondition: (aConditionList at: index).
    UIManager default inform: 'Condition removed.'.
    self changed: #list