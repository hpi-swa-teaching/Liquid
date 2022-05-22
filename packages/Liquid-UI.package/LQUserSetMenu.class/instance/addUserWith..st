toolbuilder
addUserWith: aFileStream

	| name |
	name := UIManager default request: 'Choose a name for the User Set!'.
	name ifEmpty: [self userSets add: (LQUserSet createFromFile: aFileStream). self changed: #userSets].
	name ifNotEmpty: [self userSets add: (LQUserSet createFromFile: aFileStream withName: name). self changed: #userSets].