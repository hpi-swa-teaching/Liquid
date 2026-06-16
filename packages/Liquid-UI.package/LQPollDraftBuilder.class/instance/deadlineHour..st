accessing
deadlineHour: anIndex

	deadlineHour := anIndex.
	self changed: #deadlineHour.
	self updateDeadline