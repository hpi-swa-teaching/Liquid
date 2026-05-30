deadline
updateDeadline

	| di mi yi hi mni day month year hour minute |
	di  := deadlineDay    ifNil: [1].
	mi  := deadlineMonth  ifNil: [1].
	yi  := deadlineYear   ifNil: [1].
	hi  := deadlineHour   ifNil: [1].
	mni := deadlineMinute ifNil: [1].
	"Index 1 = '--' placeholder, means not yet selected"
	(di = 1 or: [mi = 1 or: [yi = 1 or: [hi = 1 or: [mni = 1]]]]) ifTrue: [
		self pollDraft deadline: nil.
		^ self].
	day    := di - 1.
	month  := mi - 1.
	year   := (self deadlineYearList at: yi) asInteger.
	hour   := hi - 2.
	minute := (self deadlineMinuteList at: mni) asInteger.
	[self pollDraft deadline: (DateAndTime
		year:   year
		month:  month
		day:    day
		hour:   hour
		minute: minute
		second: 0)]
		on: Error
		do: [:e | self pollDraft deadline: nil]