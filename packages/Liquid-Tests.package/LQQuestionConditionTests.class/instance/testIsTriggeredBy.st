testing
testIsTriggeredBy

    | condition |
    condition := LQQuestionCondition
        triggerQuestion: q1 id
        triggerChoice: 'Yes'
        target: q2 id.
    self assert: (condition isTriggeredBy: q1 id).
    self deny: (condition isTriggeredBy: q2 id)