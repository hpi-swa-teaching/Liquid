accessing
default

	Default ifNil: [self default: (LQPollRepo new url: 'http://localhost:8003')].
	^ Default