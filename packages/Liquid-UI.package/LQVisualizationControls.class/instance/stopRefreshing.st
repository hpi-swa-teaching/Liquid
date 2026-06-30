live-update
stopRefreshing

	self polling ifNotNil: [
		self polling terminate.
		self polling: nil]