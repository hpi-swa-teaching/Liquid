tests
testUserNewFromCollection

	self user1: (LQUser newFromCollection: {'Ash' . 'Ketchum' . 'ash@mail.com' . 'Rocket'}).	
	self assert: (self compareUser1: self user2 user2: self user1)