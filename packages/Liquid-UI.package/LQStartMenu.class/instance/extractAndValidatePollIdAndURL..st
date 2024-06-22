modifying
extractAndValidatePollIdAndURL: aURLString 
	| url pollId lastSlashIndex |
	lastSlashIndex := aURLString lastIndexOf: $/.
	lastSlashIndex = aURLString size
		ifTrue: [UIManager default inform: 'Please check the entered url format.'.
			^ nil].
	url := self getUrlFrom: aURLString with: lastSlashIndex.
	pollId := self getPollIdFrom: aURLString with: lastSlashIndex.
	pollId
		ifEmpty: [UIManager default inform: 'Please enter a Poll ID.'.
			^ nil].
	(LQParticipantMenu answeredPollIds includes: pollId)
		ifTrue: [UIManager default inform: 'You have already answered this Poll.'.
			^ nil].
	^ {url. pollId}