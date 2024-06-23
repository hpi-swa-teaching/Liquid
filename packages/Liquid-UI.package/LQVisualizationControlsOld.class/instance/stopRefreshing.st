live
stopRefreshing
	self polling ifNotNil: [self polling terminate]