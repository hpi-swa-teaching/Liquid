instance creation
openResultMailWithPoll: aPoll

	ToolBuilder open: (self new poll: aPoll; isResultMail: true; yourself)