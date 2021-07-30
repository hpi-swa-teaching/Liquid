initialize-release
password: aPassword

	hashedPassword ifNotNil: [self error: 'password can only be set once'].
	hashedPassword := self hash: aPassword