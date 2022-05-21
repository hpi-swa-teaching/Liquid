as yet unclassified
createFromFile: aFileStream

	
	|line userSet|
	userSet := self new.
	[(line := aFileStream nextDelimited: Character cr) = ''] whileFalse: [userSet addUser: (LQUser newFromCollection: (line splitBy: ','))].
	^ userSet