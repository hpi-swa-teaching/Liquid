modifying
enterParticipantMode
	| pollId menu url connection input |
	LQPollRepo reset.
	input := UIManager default request: 'Add your poll id.' , Symbol cr , 'Format: http://your.server.tld:8000/pollId' initialAnswer: 'http://localhost:8000/'.
	connection := self extractAndValidatePollIdAndURL: input.
	connection
		ifNil: [^ self].
	url := connection first.
	pollId := connection second.
	LQPollRepo
		default: (LQPollRepo new url: url).
	menu := LQParticipantMenu new.
	(menu importPollWithId: pollId)
		ifNil: [UIManager default inform: 'Please enter a valid Poll ID'.
			self enterParticipantMode]
		ifNotNil: [ToolBuilder open: menu.
			self destroy]