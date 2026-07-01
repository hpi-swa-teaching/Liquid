modifying
guardUserSetFor: aPoll
    "Popup-Guard: Der Poll braucht ein zugewiesenes User Set."

    (aPoll requiresAuthentication
        and: [aPoll myUserSet notNil
        and: [aPoll userEntries notEmpty]]) ifTrue: [^ true].
    UIManager default inform:
        'Preference Matching is not available:
no User Set is assigned to this poll.
Add a User Set in the Poll Draft Builder first.'.
    ^ false