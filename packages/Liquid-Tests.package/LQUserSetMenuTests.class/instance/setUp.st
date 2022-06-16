running
setUp

	self userSetMenu: LQUserSetMenu new.
	ToolBuilder open: self userSetMenu.
	self userSet: (LQUserSet new 
								id: UUID new; 
								title: 'lorem ipsum Meine Oma fährt im Hühnerstall Motorrad';
								addUser: (LQUser new id: '3'; name: 'kandidat3'; group: 'group2'))
	
	