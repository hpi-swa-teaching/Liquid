accessing
pollDraft: anObject

	pollDraft := anObject.
	(LQUserSetRepo default includesKey: self pollDraft userSetID) ifTrue: [self choiceSelected: (self userSets indexOf: (LQUserSetRepo default at: self pollDraft userSetID))]