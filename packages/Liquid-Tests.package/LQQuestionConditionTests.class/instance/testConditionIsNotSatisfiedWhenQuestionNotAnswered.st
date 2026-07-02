testing
testConditionIsNotSatisfiedWhenQuestionNotAnswered

    | condition poll answerSet |
    poll := LQPoll newWithPollDraft: draft.
    answerSet := LQAnswerSet newWithAnswers: {} for: poll.
    condition := LQQuestionCondition
        triggerQuestion: q1 id
        triggerChoice: 'Yes'
        target: q2 id.
    self deny: (condition isSatisfiedBy: answerSet)