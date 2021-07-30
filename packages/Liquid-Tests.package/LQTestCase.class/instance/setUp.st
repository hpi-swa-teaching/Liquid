running
setUp
	super setUp.
	LQPollRepo default: LQLocalObjectRepo new.
	LQParticipantMenu answeredPollIds: Set new.