accessing
closePoll

	(LQPollRepo default at: self pollId ifAbsent: [^ 'This poll does not exist.']) closeWithPassword: (LQPasswordManager default
		findPasswordFor: poll id
		ifAbsent: [^ UIManager default inform: 'You don''t have access to this poll.']).
	(self dependents at: 1) label: 'closed Poll with ID:'.
	self changeClosePollButtonToVisualizeResultsButton