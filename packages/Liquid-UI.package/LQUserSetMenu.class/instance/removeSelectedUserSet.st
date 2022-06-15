modifying
removeSelectedUserSet

	self choiceSelected = 0 ifTrue: [^ self].
	LQUserSetRepo default removeKey: (self userSetsAt: self choiceSelected) id.
	self changed: #userSets