request handlers
isGroupGetRequest: req

	^ (req fields at: 'message') = 'getGroup'