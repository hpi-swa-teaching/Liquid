testing
testHasConditionForTarget

    | condition |
    condition := LQQuestionCondition
        triggerQuestion: q1 id
        triggerChoice: q1a1 description
        target: q2 id.
    draft addCondition: condition.
    self assert: (draft hasConditionForTarget: q2 id).
    self deny: (draft hasConditionForTarget: q3 id)