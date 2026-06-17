accessing
questionIndex: anIndex

    | question |
    question := self questionList at: anIndex ifAbsent: [^ self].
    (question isFreeTextQuestion or: [question isPriorityQuestion])
        ifTrue: [self newFreeTextViewFor: anIndex]
        ifFalse: [self newChoicesViewFor: anIndex].
    self changed: #questionIndex