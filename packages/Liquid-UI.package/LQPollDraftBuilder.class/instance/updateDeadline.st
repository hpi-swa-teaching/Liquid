deadline
updateDeadline
    | values |

    self hasIncompleteDeadline ifTrue: [
        self pollDraft deadline: nil.
        ^ self
    ].

    values := self parsedDeadlineValues.
    
    [ self applyDeadlineValues: values ]
        on: Error 
        do: [ :err | self pollDraft deadline: nil ]