accessing
poll: aPoll
    poll := aPoll.
    priorityQuestion := aPoll questionList
        detect: [:q | q isPriorityQuestion]
        ifNone: [nil].
    users := aPoll userEntries asArray.
    options := priorityQuestion
        ifNil: [#()]
        ifNotNil: [priorityQuestion choiceList asArray]
