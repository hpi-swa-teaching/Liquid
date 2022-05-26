tests
testAddToRepo

	| userSet myUUID |
	myUUID := UUID new.
	userSet := LQUserSet new.
	userSet id: myUUID;
		title: 'lorem ipsum Meine Oma fährt im Hühnerstall Motorrad';
		addToRepo.
	self assert: (LQUserSetRepo default at: myUUID) title equals: userSet title.
	LQUserSetRepo default removeKey: myUUID
	