buttons
showResults
	| pollNameInput |
	pollNameInput := FillInTheBlank request: 'Enter Poll ID'.
	"InitialAnswer: can be a randomly generated Poll-ID"
	pollNameInput
		ifNotEmpty: [((PollRepo default at: pollNameInput) isNil
					or: [(PollRepo default at: pollNameInput)
							isKindOf: RemoteObjectDummy])
				ifFalse: [ToolBuilder
						open: (LiquidResultsView newWithPoll: (PollRepo default at: pollNameInput))]
				ifTrue: ["Beware that if the ObjectRepo is remote
					there is currently no way to check if a
					poll already exists, since if it does not,
					the RemoteObjectDummy throws a
					network-error instead of sending a
					response. Therefore, we always
					overwrite existing polls on the server."
					UserDialogBoxMorph inform: 'This poll does not exist.']]