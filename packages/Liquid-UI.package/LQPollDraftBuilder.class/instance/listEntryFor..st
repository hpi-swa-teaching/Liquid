accessing
listEntryFor: aQuestion

    (self pollDraft hasConditionForTarget: aQuestion id)
        ifTrue: [ ^ '<=' , aQuestion title ].
    ^ aQuestion title