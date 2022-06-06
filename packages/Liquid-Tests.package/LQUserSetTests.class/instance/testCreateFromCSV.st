tests
testCreateFromCSV

	| userSet1 userSet2 stream |
	
	userSet1 := LQUserSet new
		addUser: self user1;
		addUser: self user2.
			
	stream := ReadStream on: '3,kandidat3,group2
4,kandidat4,group1'.

	userSet2 := LQUserSet createFromFile: stream.
	
	1 to: userSet1 userEntries size do: 
		[:i | 
		self assert: (self compareUser1: (userSet1 userEntries at: i) user2: (userSet2 userEntries at: i))]
