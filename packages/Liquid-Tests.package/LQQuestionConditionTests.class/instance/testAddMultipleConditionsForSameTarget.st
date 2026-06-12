testing
testAddMultipleConditionsForSameTarget

    | c1 c2 |
    c1 := LQQuestionCondition
        triggerQuestion: q1 id
        triggerChoice: q1a1 description
        target: q2 id.
    c2 := LQQuestionCondition
        triggerQuestion: q1 id
        triggerChoice: q1a2 description
        target: q2 id.
    draft addCondition: c1.
    draft addCondition: c2.
    self assert: (draft conditionsForTarget: q2 id) size equals: 2