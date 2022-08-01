initialize-release
password: aPassword

	self hashedPassword ifNotNil: [self error: 'password can only be set once'].
	self hashedPassword: (self hash: aPassword)