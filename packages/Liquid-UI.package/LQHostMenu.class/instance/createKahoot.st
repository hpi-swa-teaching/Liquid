modifying
createKahoot

	| givenTitle |
	givenTitle := UIManager default request: 'Enter a title for your Kahoot'.
	givenTitle = '' ifTrue: [^ self].
	ToolBuilder open: (LQKahootDraftBuilder newWithTitle: givenTitle)
