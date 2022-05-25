toolbuilder
removeSelectedUserSet

	self choiceSelected = 0 ifTrue: [].
	LQUserSetRepo default removeKey: (self userSetsAt: self choiceSelected) id.
	self changed: #userSets