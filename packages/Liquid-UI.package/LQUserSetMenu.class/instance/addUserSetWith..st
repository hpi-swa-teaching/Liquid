toolbuilder
addUserSetWith: aFileStream

	| name userSet |
	name := UIManager default request: 'Choose a name for the User Set!'.
	userSet := LQUserSet createFromFile: aFileStream withName: name.
	userSet addToRepo.
	self changed: #userSets