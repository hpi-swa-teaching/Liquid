request handlers
isPollGetRequest: req

	^ (req fields includesKey: 'message') not