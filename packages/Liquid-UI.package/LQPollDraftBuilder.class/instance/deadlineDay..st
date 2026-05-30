accessing
deadlineDay: anIndex
 
	deadlineDay := anIndex.
	self changed: #deadlineDay.
	self updateDeadline
