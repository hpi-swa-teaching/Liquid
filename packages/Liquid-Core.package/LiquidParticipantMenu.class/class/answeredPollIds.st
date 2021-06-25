opening
answeredPollIds

	answeredPollIds ifNil: [
		answeredPollIds := Set new.
	].
	^ answeredPollIds