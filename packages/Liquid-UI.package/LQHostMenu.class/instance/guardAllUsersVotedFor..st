modifying
guardAllUsersVotedFor: aPoll
    "Popup-Guard: Alle Nutzer aus dem User Set muessen abgestimmt haben."

    aPoll answerSets size >= aPoll userEntries size ifTrue: [^ true].
    UIManager default inform:
        'Preference Matching is not available:
not all users have voted yet (',
        aPoll answerSets size asString, ' / ',
        aPoll userEntries size asString, ').'.
    ^ false