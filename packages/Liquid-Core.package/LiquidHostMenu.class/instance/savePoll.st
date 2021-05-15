buttons
savePoll
|newPoll pollNameInput|

pollNameInput := FillInTheBlank request: 'Name your Poll'.

(pollNameInput) ifNotEmpty: [
	(ObjectRepo current at: pollNameInput) 
		ifNotNil: [
		self showDialogWithTitle: 'Naming error' andMessage: 'This poll name is already taken. Choose another name'.
		self savePoll.
		] 
		ifNil: [ 
			newPoll := LiquidSurvey new.
			newPoll title: pollNameInput.
			newPoll questionList: self questionList.
			newPoll startSurveyWithId: pollNameInput.
			ToolBuilder open: LiquidStartMenu new.
			self dependents do: [:curr | curr delete].
		]
].