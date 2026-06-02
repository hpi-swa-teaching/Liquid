modifying
enterParticipantMode

	| pollId url connection input fetched menu name participantMenu |
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
	(fetched isKindOf: LQKahootQuiz) ifTrue: [
		name := UIManager default
			request: 'Enter your name to join the Kahoot:'
			initialAnswer: ''.
		name ifNil: [^ self].
		participantMenu := LQKahootParticipantMenu new.
		participantMenu quiz: fetched.
		participantMenu participantName: name.
		participantMenu registerParticipant.
		ToolBuilder open: participantMenu.
		^ self destroy].
	menu := LQParticipantMenu new.
	(menu importPollWithId: pollId)
		ifNil: [
			UIManager default inform: 'Please enter a valid Poll ID'
			"self enterParticipantMode"]
		ifNotNil: [
			ToolBuilder open: menu.
			self destroy]