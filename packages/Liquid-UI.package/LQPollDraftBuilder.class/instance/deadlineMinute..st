accessing
deadlineMinute: anIndex

	deadlineMinute := anIndex.
	self changed: #deadlineMinute.
	self updateDeadline