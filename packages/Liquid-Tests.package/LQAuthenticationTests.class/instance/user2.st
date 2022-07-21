accessing
user2

	user2 ifNil: [user2 := LQUser new firstname: 'Lucia'; surname: ''; mail: 'luci@mail.com'; group: '3'].
	^ user2