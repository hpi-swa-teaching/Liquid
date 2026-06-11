supporting
pickTriggerQuestion

    | currentQ previousQuestions questionTitles pickedIndex |
    currentQ := self pollDraft questionList at: self currentQuestion.
    previousQuestions := self pollDraft questionList
        copyFrom: 1
        to: self currentQuestion - 1.
    questionTitles := previousQuestions collect: [ :q | q title ].
    pickedIndex := UIManager default
        chooseFrom: questionTitles asOrderedCollection
        title: 'Show "' , currentQ title , '" only if...'.
    pickedIndex = 0 ifTrue: [ ^ nil ].
    ^ previousQuestions at: pickedIndex