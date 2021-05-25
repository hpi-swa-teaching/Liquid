buttons
startPoll
|newPollDraft newPoll pollNameInput|

pollNameInput := FillInTheBlank request: 'Name your Poll'.
"InitialAnswer: can be a randomly generated Poll-ID"

(pollNameInput) ifNotEmpty: [
	(((PollRepo default at: pollNameInput) isNil) or: 
		[(PollRepo default at: pollNameInput) isKindOf: RemoteObjectDummy])
		"Beware that if the ObjectRepo is remote there is currently no way to check if a poll already exists, since if it does not, the RemoteObjectDummy throws a network-error instead of sending a response. Therefore, we always overwrite existing polls on the server."
		ifFalse: [
		UserDialogBoxMorph inform: 'This poll name is already taken. Choose another name' title: 'Naming error'.
		self startPoll. ] 
		ifTrue: [ 
			newPollDraft := LiquidPollDraft new.
			newPollDraft title: pollNameInput.
			newPollDraft questionList: self questionList.
			newPoll := LiquidPoll newWithPollDraft: newPollDraft.
			newPoll id: pollNameInput.
			newPoll startWithId: pollNameInput.
			ToolBuilder open: LiquidStartMenu new.
			self dependents do: [:curr | curr delete] ]
].