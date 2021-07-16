manage
generatePasswordFor: aPollId
	| password |
	password := UUID new.
	passwordStore at: aPollId put: password.
	^ password