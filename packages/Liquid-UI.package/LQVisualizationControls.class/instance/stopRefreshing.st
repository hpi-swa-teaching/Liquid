live-update
stopRefreshing
	self polling
		ifNotNil: [self polling terminate]