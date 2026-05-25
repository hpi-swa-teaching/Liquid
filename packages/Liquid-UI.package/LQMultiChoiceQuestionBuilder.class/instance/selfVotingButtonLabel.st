toolbuilder
selfVotingButtonLabel

    ^ self question allowSelfVoting
        ifTrue: ['Allow self-voting: Yes']
        ifFalse: ['Allow self-voting: No']