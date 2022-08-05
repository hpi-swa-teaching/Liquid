communication
serverAt: key

	^ WebClient httpGet: (self urlForPollWithId: key)
