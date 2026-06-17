testing
testRemoveConditionsForTarget

    | c1 c2 |
    c1 := LQQuestionCondition
        triggerQuestion: q1 id
        triggerChoice: q1a1 description
        target: q2 id.
    c2 := LQQuestionCondition
        triggerQuestion: q1 id
        triggerChoice: q1a1 description
        target: q3 id.
    draft addCondition: c1.
    draft addCondition: c2.
    draft removeConditionsForTarget: q2 id.
    self deny: (draft hasConditionForTarget: q2 id).
    self assert: (draft hasConditionForTarget: q3 id)