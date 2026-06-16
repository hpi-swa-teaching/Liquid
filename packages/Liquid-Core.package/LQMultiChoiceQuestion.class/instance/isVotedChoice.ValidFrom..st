accessing
isVotedChoice: votedChoice ValidFrom: aUser

    ^ self choiceList noneSatisfy: [:choice |
        choice description = votedChoice and: [
            (self isSelfVoteByGroup: choice from: aUser)
            or: [self isSelfVote: choice from: aUser]]]