tests
testAddToRepo

	| userSet uuid|
	uuid := UUID new.
	userSet := LQUserSet new.
	userSet id: uuid;
		title: 'lorem ipsum Meine Oma fährt im Hühnerstall Motorrad';
		addToRepo;
		yourself.
	self assert: (LQUserSetRepo default at: uuid) title equals: userSet title.
	LQUserSetRepo default removeKey: uuid
	