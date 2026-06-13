testing
testConditionIsSatisfiedWhenAnswerMatches

    | condition poll answerSet |
    poll := LQPoll newWithPollDraft: draft.
    answerSet := LQAnswerSet
        newWithAnswers: { LQChoicesAnswer newWithQuestion: q1 andVotes: {q1a1} }
        for: poll.
    condition := LQQuestionCondition
        triggerQuestion: q1 id
        triggerChoice: 'Yes'
        target: q2 id.
    self assert: (condition isSatisfiedBy: answerSet)