accessing
user1

	user1 ifNil: [
		user1 := LQUser new
			firstname: 'erika';
			surname: 'musterfrau';
			mail: 'erika.mustermann@hotmail.com';
			group: 'group1';
			yourself].
	^ user1