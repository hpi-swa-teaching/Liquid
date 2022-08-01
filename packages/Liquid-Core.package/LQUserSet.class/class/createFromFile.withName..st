as yet unclassified
createFromFile: aFileStream withName: aString

	
	| userSet|
	userSet := LQUserSet createFromFile: aFileStream.
	aString ifNotEmpty: [userSet title: aString].
	^ userSet