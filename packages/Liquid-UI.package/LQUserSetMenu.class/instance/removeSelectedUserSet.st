toolbuilder
removeSelectedUserSet

	self choiceSelected = 0 ifTrue: [].
	LQUserSetRepo default remove: (self userSetsAt: self choiceSelected) id.
	self changed: #userSets