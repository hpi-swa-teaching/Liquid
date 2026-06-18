accessing
assignmentRows
    ^ self assignments collect: [:assoc |
        | userLabel optionLabel |
        userLabel := assoc key mail.
        optionLabel := assoc value
            ifNil: ['— no assignment —']
            ifNotNil: [:opt | opt displayString].
        userLabel , '   →   ' , optionLabel]