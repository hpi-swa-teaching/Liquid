testing
testQuestionWithMultipleConditionsRequiresAll

    | q2a1 answerSetBoth answerSetOnlyFirst |
    q2a1 := LQChoice newFrom: 'Yes'.
    q2 choiceList add: q2a1.
    draft addCondition: (LQQuestionCondition
        triggerQuestion: q2 id
        triggerChoice: 'Yes'
        target: q3 id).
    evaluator := LQConditionEvaluator
        forConditions: draft conditions
        questionList: draft questionList.
    answerSetBoth := LQAnswerSet
        newWithAnswers: {
            LQChoicesAnswer newWithQuestion: q1 andVotes: {q1a1}.
            LQChoicesAnswer newWithQuestion: q2 andVotes: {q2a1} }
        for: (LQPoll newWithPollDraft: draft).
    answerSetOnlyFirst := LQAnswerSet
        newWithAnswers: {
            LQChoicesAnswer newWithQuestion: q1 andVotes: {q1a1} }
        for: (LQPoll newWithPollDraft: draft).
    self assert: (evaluator isQuestionVisible: q3 givenAnswers: answerSetBoth).
    self deny: (evaluator isQuestionVisible: q3 givenAnswers: answerSetOnlyFirst)