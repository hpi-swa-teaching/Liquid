manage
generatePasswordFor: aPollId

	| password |
	password := UUID new.
	self passwordStore at: aPollId put: password.
	^ password