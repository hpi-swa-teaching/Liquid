modifying
createPoll

	| choice givenPollTitle |
	choice := UIManager default chooseFrom: #('Poll' 'Kahoot') lines: #() title: 'What do you want to create?'.
	choice = 1 ifTrue: [
		givenPollTitle := UIManager default request: 'Enter a title for your poll'.
		givenPollTitle = '' ifTrue: [^ self].
		ToolBuilder open: (LQPollDraftBuilder newWithTitle: givenPollTitle)].
	choice = 2 ifTrue: [
		self createKahoot]