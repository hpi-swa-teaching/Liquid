modifying
removeSelectedUserSet

	self choiceSelected isZero ifTrue: [^ self].
	LQUserSetRepo default removeKey: (self userSetsAt: self choiceSelected) id.
	self changed: #userSets.
	self choiceSelected: 0