accessing
answeredPollIds
	AnsweredPollIds := nil.
	AnsweredPollIds ifNil: [AnsweredPollIds := Set new].
	^ AnsweredPollIds