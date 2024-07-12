testing
testPollDraftMenuCanBeBuilt

	| pollDraftMenu |
	pollDraftMenu := LQPollDraftMenu new.
	ToolBuilder open: pollDraftMenu.
	pollDraftMenu destroy