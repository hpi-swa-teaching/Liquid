accessing
deadlineYear: anIndex
 
	deadlineYear := anIndex.
	self changed: #deadlineYear.
	self updateDeadline
