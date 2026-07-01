testing
testRemoveConditionRemovesOnlyExactInstance

    | c1 c2 |
    c1 := LQQuestionCondition triggerQuestion: q1 id triggerChoice: 'Yes' target: q2 id.
    c2 := LQQuestionCondition triggerQuestion: q1 id triggerChoice: 'Yes' target: q2 id.
    draft addCondition: c1.
    draft addCondition: c2.
    draft removeCondition: c1.
    self assert: draft conditions size equals: 1.
    self assert: (draft conditions includes: c2)