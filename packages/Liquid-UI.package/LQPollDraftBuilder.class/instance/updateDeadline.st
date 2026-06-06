deadline
updateDeadline
    | di mi yi hi mni day month year hour minute |

    di  := deadlineDay ifNil: [ 1 ].
    mi  := deadlineMonth ifNil: [ 1 ].
    yi  := deadlineYear ifNil: [ 1 ].
    hi  := deadlineHour ifNil: [ 1 ].
    mni := deadlineMinute ifNil: [ 1 ].

    self hasIncompleteDeadline ifTrue: [
        self pollDraft deadline: nil.
        ^ self ].

    day := di - 1.
    month := mi - 1.
    year := (self deadlineYearList at: yi) asInteger.
    hour := hi - 2.
    minute := (self deadlineMinuteList at: mni) asInteger.

    self trySetDeadlineYear: year month: month day: day hour: hour minute: minute