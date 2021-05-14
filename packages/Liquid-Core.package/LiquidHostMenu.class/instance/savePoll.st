buttons
savePoll
|newPoll|

(self currentPollTitleInput) ifNotNil: [
	newPoll := LiquidSurvey new.
	newPoll title: self currentPollTitleInput.
	newPoll questionList: self questionList.
	self availablePolls: newPoll.
	ToolBuilder open: LiquidStartMenu new. "created poll is not saved"
	self dependents do: [:curr | curr delete].
]