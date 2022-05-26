tests
testUserNewFromCollection

	| user1 user2 |
	user1 := LQUser new
		id: 5;
		name: 'peter';
		group: 'group1'.

	user2 := LQUser newFromCollection: {5 . 'peter' . 'group1'}.
	
	self assert: (self compareUser1: user1 user2: user2)