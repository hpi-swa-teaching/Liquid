actions
stopPolling

	pollingProcess ifNotNil: [
		pollingProcess terminate.
		pollingProcess := nil].
	self stopMusic