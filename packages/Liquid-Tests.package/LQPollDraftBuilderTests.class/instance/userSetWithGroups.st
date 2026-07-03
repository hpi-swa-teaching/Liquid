helper methods
userSetWithGroups

	| userSet |
	userSet := LQUserSet new
		addUser: (LQUser new firstname: 'Test'; surname: 'One'; mail: 'one@mail.com'; group: 'group1'; yourself);
		yourself.
	userSet addToRepo.
	^ userSet