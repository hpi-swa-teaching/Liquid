modifying
enterParticipantMode

	| pollId url connection input fetched |
	LQPollRepo reset.
	input := UIManager default
		request: 'Add your poll id.', Symbol cr, 'Format: http://your.server.tld:8000/pollId'
		initialAnswer: 'http://localhost:8000/'.
	connection := self extractAndValidatePollIdAndURL: input.
	connection ifNil: [^ self].
	url := connection first.
	pollId := connection second.
	LQPollRepo default: (LQPollRepo new url: url).
	fetched := LQPollRepo default at: pollId ifAbsent: [
		UIManager default inform: 'Please enter a valid Poll ID'.
		^ self].
	(fetched isKindOf: LQKahootQuiz) 
		ifTrue: [	self enterKahootParticipantModeWith: fetched]
		ifFalse: [self enterNormalPollParticipantModeWith: pollId]