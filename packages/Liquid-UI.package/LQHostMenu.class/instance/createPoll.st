modifying
createPoll

	| givenPollTitle |
	givenPollTitle := UIManager default request: 'Enter a title for your poll'.
	givenPollTitle = '' ifTrue: [^ self].
	(LQPollDraft new assertTitleAvailable: givenPollTitle excluding: nil) ifFalse: [
		^ UIManager default inform: 'This title is already in use.'].
	ToolBuilder open: (LQPollDraftBuilder newWithTitle: givenPollTitle)