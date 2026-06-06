deadline
setDeadlineSafelyYear: year month: month day: day hour: hour minute: minute
    [
        self pollDraft deadline: (DateAndTime
            year: year
            month: month
            day: day
            hour: hour
            minute: minute
            second: 0)
    ] on: Error do: [:e |
        self pollDraft deadline: nil ]