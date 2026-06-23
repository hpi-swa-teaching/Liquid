A LQDeadlineMenu is a small pop-up window (opened by LQPollDraftBuilder) that lets the host pick the deadline of a poll. It presents five dropdowns - day, month, year, hour and minute - and turns the chosen entries into a single deadline that is stored on the poll-draft.

The five fields hold 1-based indices into their respective lists (dayList, monthList, ...). Index 1 is the '--' placeholder, i.e. "not chosen"; a selection only counts as complete once all five fields point past the placeholder. Confirm validates the selection (complete, valid date, not in the past) and, if it passes, writes the deadline to the poll-draft as a DateAndTime printString; Clear removes any deadline. When the menu is reopened for a poll-draft that already has a deadline, the previous selection is restored into the dropdowns.

Instance Variables
	day:			<Integer>		selected index into dayList (1 = '--', otherwise day + 1)
	month:		<Integer>		selected index into monthList (1 = '--', 2 = January, ...)
	year:			<Integer>		selected index into yearList (1 = '--', 2 = current year, ...)
	hour:			<Integer>		selected index into hourList (1 = '--', otherwise hour + 2)
	minute:		<Integer>		selected index into minuteList (1 = '--', 5-minute steps)
	pollDraft:	<LQPollDraft>	the poll-draft the chosen deadline is written to / cleared from