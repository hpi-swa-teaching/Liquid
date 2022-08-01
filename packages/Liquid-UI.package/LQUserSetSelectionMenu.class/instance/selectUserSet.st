modifying
selectUserSet

	self pollDraft userSetID: (self userSetsAt: self choiceSelected) id.
	self destroy