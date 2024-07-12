helper methods
createUserSet

	^ LQUserSet new
		addUser: (LQUser new
			firstname: 'erika';
			surname: 'musterfrau';
			mail: 'erika.mustermann@hotmail.com';
			group: 'group1';
			yourself);
		addUser: (LQUser new
			firstname: 'max';
			surname: 'mustermann';
			mail: 'max.mustermann@hotmail.com';
			group: 'group2';
			yourself);
		yourself