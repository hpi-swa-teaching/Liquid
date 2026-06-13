supporting
confirmCondition: aTriggerQuestion choice: aTriggerChoice

    | currentQ |
    currentQ := self pollDraft questionList at: self currentQuestion.
    UIManager default inform:
        'Condition set:' , String lf ,
        '"' , currentQ title , '"' , String lf ,
        'will only appear when' , String lf ,
        '"' , aTriggerQuestion title , '" = "' , aTriggerChoice description , '"'