accessing
allowSelfVoting

    ^ allowSelfVoting ifNil: [allowSelfVoting := false]