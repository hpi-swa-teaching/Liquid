modifying
enterParticipantMode

	| pollId menu url lastSlashIndex input |
	
	LQPollRepo reset.
	input := UIManager default request: 'Add your poll id.', Symbol cr,'Format: http://your.server.tld:8000/pollId' initialAnswer: 'http://localhost:8000/'.
	lastSlashIndex := input lastIndexOf: $/.
	lastSlashIndex = input size ifTrue:[UIManager default inform: 'Please enter a valid Poll ID'].
	url := input copyFrom: 1 to: lastSlashIndex.
	pollId := input copyFrom: (lastSlashIndex+1) to: input size.
	LQPollRepo default: (LQPollRepo new url: url).
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