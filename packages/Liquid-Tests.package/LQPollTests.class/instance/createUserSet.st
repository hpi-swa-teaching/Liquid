helper methods
createUserSet
	^ LQUserSet new
		addUser: (LQUser new id: '3'; name: 'kandidat3'; group: 'group2');
		addUser: (LQUser new id: '4'; name: 'kandidat4'; group: 'group1');
		yourself