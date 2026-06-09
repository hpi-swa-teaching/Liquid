deadline
parsedDeadlineValues

	self hasCompleteDeadlineSelection ifFalse: [^ nil].

	^ {
		deadlineDay - 1.
		deadlineMonth - 1.
		(self deadlineYearList at: deadlineYear) asInteger.
		deadlineHour - 2.
		(self deadlineMinuteList at: deadlineMinute) asInteger
	}