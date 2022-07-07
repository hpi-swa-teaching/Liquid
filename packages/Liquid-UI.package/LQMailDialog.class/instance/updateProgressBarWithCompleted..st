toolbuilder
updateProgressBarWithCompleted: anInteger

	self progressBar done: anInteger / self poll myUserSet userEntries size.
	self progressBar subLabel: anInteger asString, ' / ', self poll myUserSet userEntries size.