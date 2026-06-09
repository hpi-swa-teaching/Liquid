deadline
hasCompleteDeadlineSelection

	^ { deadlineDay.
		deadlineMonth.
		deadlineYear.
		deadlineHour.
		deadlineMinute }
		allSatisfy: [:each | each notNil]