creation
createFromFile: aFileStream
	
	|line userSet|
	userSet := self new.
	[(line := aFileStream nextDelimited: Character cr) withoutTrailingBlanks = String empty]
		whileFalse: [userSet addUser: (LQUser newFromCollection: (line splitBy: ','))].
	^ userSet