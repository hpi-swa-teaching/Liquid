deadline
deadlineText: aString

	| trimmed parts dateParts day month year timeParts hour minute dt |
	trimmed := aString trimSeparators.
	trimmed isEmpty ifTrue: [
		self pollDraft deadline: nil.
		^ self].
	"Expected format: DD.MM.YYYY HH:MM"
	parts := trimmed substrings: $ .
	(parts size = 2) ifFalse: [
		UIManager default inform: 'Invalid deadline format. Please use DD.MM.YYYY HH:MM (e.g. 31.12.2025 18:00)'.
		^ self].
	dateParts := parts first substrings: $..
	timeParts := parts last substrings: $:.
	((dateParts size = 3) and: [timeParts size = 2]) ifFalse: [
		UIManager default inform: 'Invalid deadline format. Please use DD.MM.YYYY HH:MM (e.g. 31.12.2025 18:00)'.
		^ self].
	[
		day   := dateParts first asInteger.
		month := dateParts second asInteger.
		year  := dateParts third asInteger.
		hour  := timeParts first asInteger.
		minute := timeParts last asInteger.
		dt := DateAndTime
			year: year month: month day: day
			hour: hour minute: minute second: 0.
		self pollDraft deadline: dt
	] on: Error do: [:e |
		UIManager default inform: 'Invalid deadline: ', e messageText]