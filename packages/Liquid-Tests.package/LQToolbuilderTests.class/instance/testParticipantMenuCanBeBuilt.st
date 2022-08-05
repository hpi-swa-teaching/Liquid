testing
testParticipantMenuCanBeBuilt

	| participantMenu answeredPollIds |
	
	answeredPollIds := Set new.
	answeredPollIds add: 'this-is-a-poll-id'.
	LQParticipantMenu answeredPollIds: answeredPollIds.
	participantMenu := LQParticipantMenu new.
	participantMenu importPollWithId: (self poll id).
	ToolBuilder open: participantMenu.
	participantMenu destroy