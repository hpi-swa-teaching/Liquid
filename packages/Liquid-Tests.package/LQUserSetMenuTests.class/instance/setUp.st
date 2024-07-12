running
setUp

	super setUp.
	ToolBuilder open: self userSetMenu.
	self userSet: (LQUserSet new
		id: UUID new asString;
		title: 'lorem ipsum Meine Oma fährt im Hühnerstall Motorrad';
		addUser: LQUserSetTests new createUser1;
		yourself)