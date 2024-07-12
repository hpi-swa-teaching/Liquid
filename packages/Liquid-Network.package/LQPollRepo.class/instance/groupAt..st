communication
groupAt: key

	^ (WebClient httpGet: (self urlForGroupRequestForPollWithId: key)) content