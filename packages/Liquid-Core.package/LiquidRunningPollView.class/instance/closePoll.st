accessing
closePoll
	(PollRepo default
		at: poll id
		ifAbsent: [^'This poll does not exist.'])
		isOpen: false.
	(self dependents at: 1) label: 'closed Poll with ID:'. 
	self changeClosePollButtonToVisualizeResultsButton.