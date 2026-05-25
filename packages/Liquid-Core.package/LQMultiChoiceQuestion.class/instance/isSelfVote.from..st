accessing
isSelfVote: aChoice from: aUser

    self allowSelfVoting ifTrue: [^ false].
    ^ aChoice description = aUser fullName