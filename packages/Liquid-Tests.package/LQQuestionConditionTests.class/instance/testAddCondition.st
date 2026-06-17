testing
testAddCondition

    | condition |
    condition := LQQuestionCondition
        triggerQuestion: q1 id
        triggerChoice: q1a1 description
        target: q2 id.
    draft addCondition: condition.
    self assert: draft conditions size equals: 1