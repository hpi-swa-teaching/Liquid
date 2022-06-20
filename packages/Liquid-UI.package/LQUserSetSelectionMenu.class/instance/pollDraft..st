accessing
pollDraft: anObject
	pollDraft := anObject.
	self choiceSelected: (self userSets indexOf: pollDraft userSetID)