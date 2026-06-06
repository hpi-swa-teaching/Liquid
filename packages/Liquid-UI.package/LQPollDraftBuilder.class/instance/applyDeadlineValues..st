accessing
applyDeadlineValues: values
	self pollDraft deadline:
    (DateAndTime
        year: values third
        month: values second
        day: values first
        hour: values fourth
        minute: values fifth
        second: 0)