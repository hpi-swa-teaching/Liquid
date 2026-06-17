testing
testConditionStoresCorrectData

    | condition |
    condition := LQQuestionCondition
        triggerQuestion: q1 id
        triggerChoice: q1a1 description
        target: q2 id.
    self assert: condition triggerQuestionId equals: q1 id.
    self assert: condition triggerChoiceDescription equals: 'Yes'.
    self assert: condition targetQuestionId equals: q2 id