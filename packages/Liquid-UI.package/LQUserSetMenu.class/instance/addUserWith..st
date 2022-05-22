toolbuilder
addUserWith: aFileStream

	| name userSet|
	name := UIManager default request: 'Choose a name for the User Set!'.
	name ifEmpty: [userSet:=LQUserSet createFromFile: aFileStream].
	name ifNotEmpty: [userSet:=LQUserSet createFromFile: aFileStream withName: name].
	userSet addToRepo.
	self changed: #userSets