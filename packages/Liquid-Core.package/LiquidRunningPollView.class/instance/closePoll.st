accessing
closePoll
	(PollRepo default
		at: poll id
		ifAbsent: [^'This poll does not exist.'])
		isOpen: false.
	self changeClosePollButtonToVisualizeResultsButton.