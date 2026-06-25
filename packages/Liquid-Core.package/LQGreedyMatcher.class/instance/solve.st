solving
solve
    "Gibt ein Array zurück: result at: userIndex = optionIndex (oder nil)."

    | result usedOptions |
    numRows = 0 ifTrue: [^ Array new: 0].
    result := Array new: numRows withAll: nil.
    usedOptions := Set new.
    1 to: numRows do: [:i |
        | best |
        best := self bestFreeOptionFor: i excluding: usedOptions.
        best ifNotNil: [
            result at: i put: best.
            usedOptions add: best]].
    ^ result
