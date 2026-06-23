actions
stopMusic

	self currentSound ifNotNil: [
		self currentSound pause.
		self currentSound: nil.
	].
