deadline
parsedDeadlineValues

    | dayIndex monthIndex yearIndex hourIndex minuteIndex |

    dayIndex := deadlineDay.
    monthIndex := deadlineMonth.
    yearIndex := deadlineYear.
    hourIndex := deadlineHour.
    minuteIndex := deadlineMinute.

    (dayIndex isNil
        or: [monthIndex isNil
        or: [yearIndex isNil
        or: [hourIndex isNil
        or: [minuteIndex isNil]]]])
        ifTrue: [^ nil].

    ^ {
        dayIndex - 1.
        monthIndex - 1.
        (self deadlineYearList at: yearIndex) asInteger.
        hourIndex - 2.
        (self deadlineMinuteList at: minuteIndex) asInteger
    }