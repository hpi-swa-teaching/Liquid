supporting
confirmCondition: aTriggerQuestion choice: aTriggerChoice

    | currentQ condition |
    currentQ := self pollDraft questionList at: self currentQuestion.
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