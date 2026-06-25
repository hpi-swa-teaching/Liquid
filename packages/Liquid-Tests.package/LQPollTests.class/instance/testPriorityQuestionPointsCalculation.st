testing
testPriorityQuestionPointsCalculation

    | poll pollDraft question choice1 choice2 points1 points2 answerSet answer |
    
    pollDraft := LQPollDraft new.
    
    question := LQPriorityQuestion new.
    question id: 'q1'.
    
    choice1 := LQChoice new description: 'Option A'.
    choice2 := LQChoice new description: 'Option B'.
    question addChoice: choice1; addChoice: choice2.
    
    pollDraft addQuestion: question.
    poll := LQPoll newWithPollDraft: pollDraft.
    
    answer := LQChoicesAnswer new.
    answer questionId: 'q1'.
    answer choicesRanking: (OrderedCollection new 
        add: 'Option A'; 
        add: 'Option B'; 
        yourself).
    
    answerSet := LQAnswerSet new.
    answerSet answers at: 'q1' put: answer.
    
    poll addAnswerSet: answerSet.
    
    points1 := (LQPollStatistics poll: poll) calculatePointsForChoice: choice1 ForQuestion: question.
    points2 := (LQPollStatistics poll: poll) calculatePointsForChoice: choice2 ForQuestion: question.
    
    self assert: 2 equals: points1.
    self assert: 1 equals: points2.