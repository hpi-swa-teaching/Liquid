modifying
enterParticipantMode

	| pollId menu url |
	
	LQPollRepo reset.
	url := UIManager default request: 'What''s your server''s url and port? format: http://your.server.tld:8000' initialAnswer: 'http://localhost:8000'.
	LQPollRepo default: (LQPollRepo new url: url).
	pollId := UIManager default request: 'What''s your Poll ID?'.
	pollId ifEmpty: [^ self].
	(LQParticipantMenu answeredPollIds includes: pollId) ifTrue: [
		UIManager default inform: 'You have already answered this Poll.'.
		^ self].
	menu := LQParticipantMenu new.
	(menu importPollWithId: pollId)
		ifNotNil: [ToolBuilder open: menu.
					self destroy]
		ifNil: [UIManager default inform: 'Please enter a valid Poll ID'.
					self enterParticipantMode]