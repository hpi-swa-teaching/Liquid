building
costMatrix
    "Kosten = Rang der Option in der Präferenzliste des Users (1 = beste).
     Hat ein User nicht abgestimmt oder eine Option nicht gerankt: hohe Default-Kosten."

    | defaultCost |
    defaultCost := options size + 1.
    ^ users collect: [:user |
        | userAnswer ranking |
        userAnswer := self answerOfUser: user.
        ranking := userAnswer
            ifNil: [#()]
            ifNotNil: [userAnswer choicesRanking asArray].
        options collect: [:opt |
            | idx |
            idx := ranking indexOf: opt description.
            idx = 0 ifTrue: [defaultCost] ifFalse: [idx]]]