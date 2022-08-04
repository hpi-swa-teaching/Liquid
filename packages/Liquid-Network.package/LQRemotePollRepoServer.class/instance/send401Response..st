request handlers
send401Response: request

	| message |
	message := '<html><head><title>', LQRemotePollRepoServer unauthorizedResponseCode, 'Unauthorized</title></head></html>'.
	
	request sendResponseCode: LQRemotePollRepoServer unauthorizedResponseCode
		content: message squeakToUtf8
		type: 'text/plain; charset=utf-8'
		close: true