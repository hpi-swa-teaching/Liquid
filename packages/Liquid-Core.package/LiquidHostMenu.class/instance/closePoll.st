change behavior
closePoll
	| pollId |
	pollId := UIManager default request: 'Enter Poll ID'.
	(PollRepo default
		at: pollId
		ifAbsent: [^ UIManager default inform: 'This poll does not exist.']) poll
		closeWithPassword: (LQPasswordManager default findPasswordFor: pollId)