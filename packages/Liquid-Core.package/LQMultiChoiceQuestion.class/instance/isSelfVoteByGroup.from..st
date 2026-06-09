accessing
isSelfVoteByGroup: aChoice from: aUser

    self allowSelfVoting ifTrue: [^ false].
    ^ aChoice excludesGroup: aUser group