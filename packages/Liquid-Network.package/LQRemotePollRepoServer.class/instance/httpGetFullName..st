request handlers
httpGetFullName: req

    | poll id user |
    id := req fields at: 'id'.
    (self hasPollWithId: id) ifFalse: [^ req send404Response].
    poll := self pollWithId: id.
    poll requiresAuthentication
        ifTrue: [
            user := poll myUserWithToken: (req fields at: 'token').
            req send200Response: user fullName]
        ifFalse: [req send200Response: '']