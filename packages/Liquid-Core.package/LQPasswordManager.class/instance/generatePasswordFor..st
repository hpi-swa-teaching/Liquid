manage
generatePasswordFor: aPollId
	| password |
	password := UUID new.
	store at: aPollId put: password.
	^ password