deadline
parsedDeadlineValues
    | di mi yi hi mni |

    di  := deadlineDay.
    mi  := deadlineMonth.
    yi  := deadlineYear.
    hi  := deadlineHour.
    mni := deadlineMinute.

    (di isNil or: [mi isNil or: [yi isNil or: [hi isNil or: [mni isNil]]]])
        ifTrue: [ ^ nil ].

    ^ {
        di - 1.
        mi - 1.
        (self deadlineYearList at: yi) asInteger.
        hi - 2.
        (self deadlineMinuteList at: mni) asInteger
    }