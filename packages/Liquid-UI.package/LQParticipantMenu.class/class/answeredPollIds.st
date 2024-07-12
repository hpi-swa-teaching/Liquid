accessing
answeredPollIds

	AnsweredPollIds ifNil: [AnsweredPollIds := Set new].
	^ AnsweredPollIds