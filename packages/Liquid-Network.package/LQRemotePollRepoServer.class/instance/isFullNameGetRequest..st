request handlers
isFullNameGetRequest: req

    ^ (req fields at: 'message') = 'getFullName'