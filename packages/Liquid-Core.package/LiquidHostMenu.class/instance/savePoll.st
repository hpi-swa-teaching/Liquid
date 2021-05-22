buttons
savePoll
|newPoll pollNameInput|

pollNameInput := FillInTheBlank request: 'Name your Poll'.
"InitialAnswer: can be a randomly generated Poll-ID, see Issue #25"

(pollNameInput) ifEmpty: [^ self].

"Beware that if the ObjectRepo is remote there is currently no way to check if a poll already exists, since if it does not, the RemoteObjectDummy throws a network-error instead of sending a response. Therefore, as a workaround, we always overwrite existing polls on the server."
[((PollRepo default at: pollNameInput) isNil) or: ((PollRepo default at: pollNameInput) isKindOf: RemoteObjectDummy)]
	whileFalse: [
		UserDialogBoxMorph inform: 'This poll name is already taken. Choose another name' title: 'Naming error'.
		pollNameInput := FillInTheBlank request: 'Name your Poll'.
		pollNameInput ifEmpty: [^ self].
	].

newPoll := LiquidPollDraft new.
newPoll title: pollNameInput.
newPoll questionList: self questionList.
newPoll startSurveyWithId: pollNameInput.
ToolBuilder open: LiquidStartMenu new.
self dependents do: [:curr | curr delete].