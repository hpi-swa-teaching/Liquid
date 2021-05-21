buttons
downloadPoll
	| pollNameInput poll |
	pollNameInput := FillInTheBlank request: 'Enter Poll ID'.
	"InitialAnswer: can be a randomly generated
	Poll-ID "
	pollNameInput
		ifEmpty: [^ self].
	poll := PollRepo default
				at: pollNameInput
				ifAbsent: [UserDialogBoxMorph inform: 'This poll name does not exist.' title: 'Poll not found'.
					self savePoll].
	self downloadedPoll: poll;
		 questionList: self downloadedPoll questionList.
	self changed: #questionList.
	self choiceList: OrderedCollection new.
	self changed: #choiceList