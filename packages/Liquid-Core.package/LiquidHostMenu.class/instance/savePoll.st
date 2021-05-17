buttons
savePoll
|newPoll pollNameInput|

pollNameInput := FillInTheBlank request: 'Name your Poll'.
"InitialAnswer: can be a randomly generated Poll-ID"

(pollNameInput) ifNotEmpty: [
	(((ObjectRepo current at: pollNameInput) isNil) or: 
		[(ObjectRepo current at: pollNameInput) isKindOf: RemoteObjectDummy])
		"Beware that if the ObjectRepo is remote there is currently no way to check if a poll already exists, since if it does not, the RemoteObjectDummy throws a network-error instead of sending a response. Therefore, we always overwrite existing polls on the server."
		ifFalse: [
		UserDialogBoxMorph inform: 'This poll name is already taken. Choose another name' title: 'Naming error'.
		self savePoll. ] 
		ifTrue: [ 
			newPoll := LiquidSurvey new.
			newPoll title: pollNameInput.
			newPoll questionList: self questionList.
			newPoll startSurveyWithId: pollNameInput.
			ToolBuilder open: LiquidStartMenu new.
			self dependents do: [:curr | curr delete] ]
].