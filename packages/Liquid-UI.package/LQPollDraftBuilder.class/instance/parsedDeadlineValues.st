accessing
parsedDeadlineValues

    | dayIndex monthIndex yearIndex hourIndex minuteIndex |

      dayIndex := deadlineModel deadlineDay.
    monthIndex := deadlineModel deadlineMonth.
    yearIndex := deadlineModel deadlineYear.
    hourIndex := deadlineModel deadlineHour.
    minuteIndex := deadlineModel deadlineMinute.

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