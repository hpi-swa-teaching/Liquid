request handlers
isAddAnswerSetRequest: req

	^ (req fields at: 'message') = 'addAnswerSet'