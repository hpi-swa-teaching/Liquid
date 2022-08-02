accessing
closePoll

	(LQRemotePollRepoServer pollRepo at: self pollId ifAbsent: [^ 'This poll does not exist.']) closeWithPassword: (LQPasswordManager default
		findPasswordFor: self poll id
		ifAbsent: [^ UIManager default inform: 'You don''t have access to this poll.']).
	self dependents first label: 'closed Poll with ID:'.
	self changeClosePollButtonToVisualizeResultsButton