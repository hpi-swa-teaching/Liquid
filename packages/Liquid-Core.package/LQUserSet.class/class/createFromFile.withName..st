as yet unclassified
createFromFile: aFileStream withName: aString

	
	| userSet|
	userSet := LQUserSet createFromFile: aFileStream.
	userSet title: aString.
	^ userSet