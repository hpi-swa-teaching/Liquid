accessing
user3
	^ user3 ifNil: [^user3 := LQUser new firstname: 'Ash'; surname: 'Ketchum'; mail: 'ash@mail.com'; group: 'Rocket']