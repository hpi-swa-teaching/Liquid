solving
sortedPairs
    "Alle Paare aufsteigend nach Kosten."

    ^ self allPairs asSortedCollection: [:a :b | (a at: 3) <= (b at: 3)]
