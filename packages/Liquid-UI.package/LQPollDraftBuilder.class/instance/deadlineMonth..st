accessing
deadlineMonth: anIndex
 
	deadlineMonth := anIndex.
	self changed: #deadlineMonth.
	self updateDeadline
