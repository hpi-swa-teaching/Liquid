helpers
answerSetWith: aChoice

    ^ LQAnswerSet
        newWithAnswers: { LQChoicesAnswer newWithQuestion: q1 andVotes: {aChoice} }
        for: (LQPoll newWithPollDraft: draft)