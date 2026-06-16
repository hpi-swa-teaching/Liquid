answerExclusion
isChoiceExcluded: aChoice

    (self question notNil and: [self question allowSelfVoting]) ifTrue: [^ false].
    (aChoice excludesGroup: self group) ifTrue: [^ true].
    (self fullName notNil and: [self fullName isEmpty not])
        ifTrue: [^ aChoice description = self fullName].
    ^ false