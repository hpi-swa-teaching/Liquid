modifying
enterKahootParticipantModeWith: fetched

	| name participantMenu |
	name := UIManager default request: 'Enter your name to join the Kahoot:' initialAnswer: ''.
	name ifNil: [^ self].
	participantMenu := LQKahootParticipantMenu new.
	participantMenu quiz: fetched.
	participantMenu participantName: name.
	participantMenu registerParticipant.
	ToolBuilder open: participantMenu.
	participantMenu startPolling.
	^ self destroy