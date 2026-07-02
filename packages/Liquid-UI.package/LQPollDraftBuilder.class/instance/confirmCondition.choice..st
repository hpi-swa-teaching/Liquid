supporting
confirmCondition: aTriggerQuestion choice: aTriggerChoice

    | currentQ condition alreadyExists |
    currentQ := self pollDraft questionList at: self currentQuestion.
    alreadyExists := (self pollDraft conditionsForTarget: currentQ id)
        anySatisfy: [ :c |
            c triggerQuestionId = aTriggerQuestion id and: [
                c triggerChoiceDescription = aTriggerChoice description ] ].
    alreadyExists ifTrue: [
        UIManager default inform: 'This condition already exists.'.
        ^ self ].
    condition := LQQuestionCondition
        triggerQuestion: aTriggerQuestion id
        triggerChoice: aTriggerChoice description
        target: currentQ id.
    self pollDraft addCondition: condition.
    UIManager default inform:
        'Condition added:' , String lf ,
        '"' , currentQ title , '"' , String lf ,
        'will only appear when' , String lf ,
        '"' , aTriggerQuestion title , '" = "' , aTriggerChoice description , '"'.
    self changed: #list