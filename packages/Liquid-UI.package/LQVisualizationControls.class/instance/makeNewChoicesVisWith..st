accessing
makeNewChoicesVisWith: aMorph

	self wrapperMorph submorphsDo: [:m | m delete].
	aMorph position: 0 @ 0.
	self wrapperMorph addMorph: aMorph