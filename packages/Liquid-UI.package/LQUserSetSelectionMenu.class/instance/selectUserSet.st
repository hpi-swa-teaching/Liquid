modifying
selectUserSet

	self pollDraft userSetID: (self userSetsAt: choiceSelected) id.
	self destroy