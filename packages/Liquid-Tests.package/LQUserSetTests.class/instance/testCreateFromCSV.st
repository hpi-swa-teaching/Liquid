testing
testCreateFromCSV

	| userSet1 userSet2 stream |
	userSet1 := LQUserSet new
		addUser: self user1;
		addUser: self user2;
		yourself.
	
	stream := ReadStream on: 'erika,musterfrau,erika.mustermann@hotmail.com,group1
Ash,Ketchum,ash@mail.com,Rocket'.
	userSet2 := LQUserSet createFromFile: stream.
	self assert: (self compareUser1: userSet1 userEntries first user2: userSet2 userEntries first).
	self assert: (self compareUser1: userSet1 userEntries second user2: userSet2 userEntries second)