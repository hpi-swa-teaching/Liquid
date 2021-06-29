change behavior
closePoll
	(PollRepo default
		at: (FillInTheBlank request: 'Enter Poll ID')
		ifAbsent: [^ UIManager default inform: 'This poll does not exist.'])
		isOpen: false