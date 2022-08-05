request handlers
send401Response: request

	| message |
	message := '<html><head><title>', self class unauthorizedResponseCode, 'Unauthorized</title></head></html>'.
	
	request sendResponseCode: self class unauthorizedResponseCode
		content: message squeakToUtf8
		type: 'text/plain; charset=utf-8'
		close: true