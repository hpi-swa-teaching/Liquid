deadline
hasIncompleteDeadline

    ^ (deadlineDay ifNil: [1]) = 1
        or: [(deadlineMonth ifNil: [1]) = 1
        or: [(deadlineYear ifNil: [1]) = 1
        or: [(deadlineHour ifNil: [1]) = 1
        or: [(deadlineMinute ifNil: [1]) = 1]]]]