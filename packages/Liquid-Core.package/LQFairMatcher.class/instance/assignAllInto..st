solving
assignAllInto: result
    | usedUsers usedOptions |
    usedUsers := Set new.
    usedOptions := Set new.
    self sortedPairs do: [:pair |
        self assign: pair into: result usedUsers: usedUsers usedOptions: usedOptions]
