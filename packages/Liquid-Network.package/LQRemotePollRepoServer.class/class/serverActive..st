accessing
serverActive: aBoolean
	aBoolean
		ifTrue: [self startServer]
		ifFalse: [self stopServer]
	