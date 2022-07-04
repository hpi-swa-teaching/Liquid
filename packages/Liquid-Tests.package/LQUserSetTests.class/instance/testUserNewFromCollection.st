tests
testUserNewFromCollection

	"user1 := LQUser new
		id: 5;
		name: 'peter';
		group: 'group1'."

	user1 := LQUser newFromCollection: {'Ash' . 'Ketchum' . 'ash@mail.com' . 'Rocket'}.
	
	self assert: (self compareUser1: self user2 user2: user1)