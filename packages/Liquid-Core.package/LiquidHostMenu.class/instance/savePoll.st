buttons
savePoll
|newPoll|

(self currentPollTitleInput) ifNotNil: [
	newPoll := LiquidSurvey new.
	newPoll title: self currentPollTitleInput.
	newPoll questionList: self questionList.
	newPoll startSurveyWithId: self currentPollTitleInput asString.
	ToolBuilder open: LiquidStartMenu new.
	self dependents do: [:curr | curr delete].
]