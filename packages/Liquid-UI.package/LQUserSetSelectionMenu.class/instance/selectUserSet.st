as yet unclassified
selectUserSet

	self pollDraft userSetID: (self userSetsAt: choiceSelected) id.
	self destroy