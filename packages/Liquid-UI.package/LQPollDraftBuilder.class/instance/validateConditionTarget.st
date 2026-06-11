supporting
validateConditionTarget

    | currentQ previousQuestions |
    (self currentQuestion isNil or: [ self currentQuestion = 0 ]) ifTrue: [
        UIManager default inform: 'Please select a question first.'.
        ^ false ].
    currentQ := self pollDraft questionList at: self currentQuestion.
    previousQuestions := self pollDraft questionList
        copyFrom: 1
        to: self currentQuestion - 1.
    previousQuestions isEmpty ifTrue: [
        UIManager default inform: 'There are no previous questions to depend on.
The first question cannot have a condition.'.
        ^ false ].
    ^ true