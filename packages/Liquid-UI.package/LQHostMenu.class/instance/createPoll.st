modifying
createPoll

	| givenPollTitle |

	givenPollTitle := UIManager default request: 'Enter a title for your poll'.
	(givenPollTitle = '') ifTrue:  [^ self].
	ToolBuilder open: (LQPollDraftBuilder newWithTitle: givenPollTitle).