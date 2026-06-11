modifying
openAddConditionDialog
    
    | currentQ previousQuestions |
    (self currentQuestion isNil or: [ self currentQuestion isZero ]) ifTrue: [
        UIManager default inform: 'Please select a question first.'.
        ^ self
    ].
    currentQ := self pollDraft questionList at: self currentQuestion.
    previousQuestions := self pollDraft questionList copyFrom: 1 to: self 	currentQuestion - 1.
    previousQuestions isEmpty ifTrue: [
        UIManager default inform: 'There are no previous questions to depend on.'.
        ^ self
    ].
    UIManager default inform: 'Condition dialog for: ', currentQ title