change behavior
closePoll
	(PollRepo default
		at: (FillInTheBlank request: 'Enter Poll ID')
		ifAbsent: [^ UserDialogBoxMorph inform: 'This poll does not exist.'])
		open: false