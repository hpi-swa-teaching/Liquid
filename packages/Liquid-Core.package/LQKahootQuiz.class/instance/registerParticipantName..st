server compatibility
registerParticipantName: aString

	self participants add: aString.
	self scores at: aString put: 0.
	self changed: #participants