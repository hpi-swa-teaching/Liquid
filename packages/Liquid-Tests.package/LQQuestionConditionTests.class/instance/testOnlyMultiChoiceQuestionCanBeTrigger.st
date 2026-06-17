testing
testOnlyMultiChoiceQuestionCanBeTrigger

    | freeTextQuestion priorityQuestion multiChoiceQuestion |
    freeTextQuestion := LQFreeTextQuestion new.
    priorityQuestion := LQPriorityQuestion new.
    multiChoiceQuestion := LQMultiChoiceQuestion new.
    self deny: freeTextQuestion isMultiChoiceQuestion.
    self deny: priorityQuestion isMultiChoiceQuestion.
    self assert: multiChoiceQuestion isMultiChoiceQuestion