buttons
downloadPoll
|pollNameInput|

pollNameInput := FillInTheBlank request: 'Enter Poll ID'.
"InitialAnswer: can be a randomly generated Poll-ID"

(pollNameInput) ifNotEmpty: [
	(((PollRepo default at: pollNameInput) isNil) or: 
		[(PollRepo default at: pollNameInput) isKindOf: RemoteObjectDummy])
		"Beware that if the ObjectRepo is remote there is currently no way to check if a poll already exists, since if it does not, the RemoteObjectDummy throws a network-error instead of sending a response. Therefore, we always overwrite existing polls on the server."
		ifTrue: [
		UserDialogBoxMorph inform: 'This poll name does not exist.' title: 'Poll not found'.
		self savePoll. ] 
		ifFalse: [
			self downloadedPoll: (PollRepo default at: pollNameInput);
			questionList: self downloadedPoll questionList. 
			self changed: #questionList.
			self choiceList: OrderedCollection new.
			self changed: #choiceList.]
].