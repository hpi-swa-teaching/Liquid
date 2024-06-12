modifying
enterParticipantMode
	| pollId menu url lastSlashIndex input |
	LQPollRepo reset.
	input := UIManager default request: 'Add your poll id.' , Symbol cr , 'Format: http://your.server.tld:8000/pollId' initialAnswer: 'http://localhost:8000/'.
	lastSlashIndex := input lastIndexOf: $/.
	lastSlashIndex = input size "Check for valid id"
		ifTrue: [UIManager default inform: 'Please enter a valid Poll ID'].
	url := self getUrlFrom: input with: lastSlashIndex.
	pollId := self getPollIdFrom: input with: lastSlashIndex.
	LQPollRepo
		default: (LQPollRepo new url: url).
	pollId
		ifEmpty: [^ self].
	(LQParticipantMenu answeredPollIds includes: pollId)
		ifTrue: [UIManager default inform: 'You have already answered this Poll.'.
			^ self].
	menu := LQParticipantMenu new.
	(menu importPollWithId: pollId)
		ifNil: [UIManager default inform: 'Please enter a valid Poll ID'.
			self enterParticipantMode]
		ifNotNil: [ToolBuilder open: menu.
			self destroy]