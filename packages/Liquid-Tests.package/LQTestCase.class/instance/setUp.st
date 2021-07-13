running
setUp
	super setUp.
	PollRepo default: LocalObjectRepo new.
	LiquidParticipantMenu answeredPollIds: Set new.