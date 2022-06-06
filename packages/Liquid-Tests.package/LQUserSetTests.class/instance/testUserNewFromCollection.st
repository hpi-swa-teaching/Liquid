tests
testUserNewFromCollection

	| user2 |
	"user1 := LQUser new
		id: 5;
		name: 'peter';
		group: 'group1'."

	user2 := LQUser newFromCollection: {'3' . 'kandidat3' . 'group2'}.
	
	self assert: (self compareUser1: self user1 user2: user2)