solving
assign: pair into: result usedUsers: usedUsers usedOptions: usedOptions
    | i j |
    i := pair at: 1.
    j := pair at: 2.
    ((usedUsers includes: i) or: [usedOptions includes: j]) ifTrue: [^ self].
    result at: i put: j.
    usedUsers add: i.
    usedOptions add: j
