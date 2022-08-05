toolbuilder
updateProgressBarWithCompleted: anInteger

	self progressBar done: anInteger / self poll userEntries size.
	self progressBar subLabel: anInteger asString, ' / ', self poll userEntries size