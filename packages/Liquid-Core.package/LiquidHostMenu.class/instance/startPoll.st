change behavior
startPoll
	"InitialAnswer: can be a randomly generated
	Poll-ID"
	| pollNameInput newPoll newPollDraft |
	pollNameInput := FillInTheBlank request: 'Name your Poll'.
	pollNameInput
		ifEmpty: [^ self].
	newPollDraft := LiquidPollDraft new title: pollNameInput;
				 questionList: self questionList.
	newPoll := LiquidPoll newWithPollDraft: newPollDraft.
	newPoll id: pollNameInput;
		 open: true.
	self
		currentPoll: (newPoll
				startWithId: pollNameInput
				ifTaken: [UserDialogBoxMorph inform: 'This poll name is already taken. Choose another name' title: 'Naming error'.
					self startPoll])